`include "config.svh"

(* keep_hierarchy *)
module bypass_block #(
    parameter int width = 4
) (
    input logic [width-1:0] a,
    input logic [width-1:0] b,
    input logic cin,
    output logic [width-1:0] sum,
    output logic cout
);

    genvar i;
    logic c[width:0]; // carry chain
    assign cout = c[width];
    assign c[0] = cin;

    generate
        for (i = 0; i < width; i = i + 1) begin
            fa fa_inst (
                .a(a[i]),
                .b(b[i]),
                .cin(c[i]),
                .sum(sum[i]),
                .cout(c[i+1])
            );
        end
    endgenerate
endmodule

(* keep_hierarchy *)
module bypass_logic #(
    parameter int width = 4
) (
    input logic [width-1:0] a,
    input logic [width-1:0] b,
    input logic c_chain,
    input logic cin,
    output logic cout
);
    logic propagate;
    assign propagate = &(a ^ b); // every bit propagates -> carry can skip the block
    assign cout = propagate ? cin : c_chain;

endmodule

module adder #(
    parameter int width = `WIDTH,
    parameter int num_stages = width / 4, // 4-bit blocks as in the figure
    parameter int width_per_stage = width / num_stages
) (
    input logic clk,
    input logic [width-1:0] a,
    input logic [width-1:0] b,
    input logic cin,
    output logic [width-1:0] sum,
    output logic cout
);

    // registered inputs/outputs; the bypass adder below works on the *_q / *_d signals
    logic [width-1:0] a_q, b_q, sum_d;
    logic cin_q, cout_d;

    always_ff @(posedge clk) begin
        a_q   <= a;
        b_q   <= b;
        cin_q <= cin;
        sum   <= sum_d;
        cout  <= cout_d;
    end

    logic [num_stages-1:0] c_stage; // carry out of each stage (after bypass mux)
    logic [num_stages-1:0] c_chain; // raw ripple carry out of each block
    genvar i;

    generate
        for (i = 0; i < num_stages; i = i + 1) begin 
            bypass_block #(
                .width(width_per_stage)
            ) bypass_block_inst (
                .a(a_q[i*width_per_stage +: width_per_stage]),
                .b(b_q[i*width_per_stage +: width_per_stage]),
                .sum(sum_d[i*width_per_stage +: width_per_stage]),
                .cin(i == 0 ? cin_q : c_stage[i-1]),
                .cout(c_chain[i])
            );

            if (i < num_stages - 1) begin : g_bypass // last stage has no bypass mux
                bypass_logic #(
                    .width(width_per_stage)
                ) bypass_logic_inst (
                    .a(a_q[i*width_per_stage +: width_per_stage]),
                    .b(b_q[i*width_per_stage +: width_per_stage]),
                    .c_chain(c_chain[i]),
                    .cin(i == 0 ? cin_q : c_stage[i-1]),
                    .cout(c_stage[i])
                );
            end else begin : g_last
                assign c_stage[i] = c_chain[i];
            end
        end
    endgenerate

    assign cout_d = c_stage[num_stages-1];

endmodule
