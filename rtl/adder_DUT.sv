

module adder(adder_inf.adder_dut i0);

always @(posedge i0.clk) begin 

i0.sum <= {1'b0, i0.a} +{1'b0, i0.b} +i0.c;
end


endmodule