
BUILD_DIR = build
SIM_DIR = $(BUILD_DIR)/sim

.PHONY sim:
sim:
	@echo "Running simulation..."
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(SIM_DIR)
	@iverilog -g2012 -o $(SIM_DIR)/adder_test ./sv_src/adder.sv ./sv_src/fa.sv ./sv_src/adder_tb.sv -s adder_tb
	@vvp $(SIM_DIR)/adder_test