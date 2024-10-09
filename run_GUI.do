vlib work
vlog ksa16b_simple.v ksa16b_simple_tb.sv
vsim -voptargs=+acc -debugDB work.ksa16b_simple_tb

# Add waveform for the signals in the testbench
add wave -r /ksa16b_simple_tb/*

# Run the simulation for 100 ns
run 100 ns

# Open the schematic viewer for the top module
# vsim -view ksa16b_simple_tb.sv

# Alternatively, use the following command to view the schematic for a specific module
view structure

# Optional: You can use the "view" command to ensure the schematic window is open
# view schematic
