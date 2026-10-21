module adder_tb;

parameter int width = 16;

logic [width-1:0] a, b;
logic cin, cout;
logic [width-1:0] sum;
logic [width:0] expected;
int count, errors;

adder #(.width(width)) dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

assign expected = a + b + cin;

task automatic check();
    #10; // let the combinational adder settle
    if ({cout, sum} !== expected) begin
        errors++;
        $error("%0d): a = %h, b = %h, cin = %b, {cout,sum} = %h, expected = %h", count, a, b, cin, {cout, sum}, expected);
    end
    count++;
endtask

initial begin

    $dumpfile("build/sim/adder_tb.vcd");
    $dumpvars(0, adder_tb);

    $display("Starting testbench for adder...");
    $display("--------------------------------------------------------------------");

    count = 0;
    errors = 0;

    repeat (100) begin
        a = $urandom();
        b = $urandom();
        cin = $urandom();
        check();
    end

    $display("--------------------------------------------------------------------");
    if (errors == 0) $display("PASS: %0d vectors", count);
    else             $display("FAIL: %0d / %0d vectors wrong", errors, count);
    $finish;
end

endmodule
