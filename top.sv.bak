`include "uvm_macros.svh"

module top();

  import uvm_pkg::*;
  import myfiles::*;

  bit clk=0;

  adder_inf i0(clk);
  adder u0(i0);

  initial begin
    uvm_config_db#(virtual adder_inf)::set(null,"*","adder_vif",i0);
    run_test("test");
  end

  always #5 clk = ~clk;

endmodule