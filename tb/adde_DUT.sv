

module adder(adder_inf.adder_dut i0);

always @(posedge i0.clk) begin 

i0.sum <= {i0.a + i0.b + i0.c};

end


endmodule