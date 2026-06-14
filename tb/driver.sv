
class driver extends uvm_driver#(transaction);
virtual adder_inf vif;
transaction pkt;

`uvm_component_utils(driver)

function new(string name="driver",uvm_component parent=null);
super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
if(!uvm_config_db#(virtual adder_inf)::get(this,"","adder_vif",vif))
`uvm_error("Driver","Unable to get virtual interface");

endfunction

task run_phase(uvm_phase phase);
forever begin
seq_item_port.get_next_item(pkt);
drive_item(pkt);
seq_item_port.item_done();
end
endtask

task drive_item(transaction pkt);
@(negedge vif.clk)
vif.a<=pkt.a;
vif.b<=pkt.b;
vif.c<=pkt.c;

`uvm_info("DRV",
$sformatf("DRIVING a=%0d b=%0d c=%0d",
          pkt.a,pkt.b,pkt.c),
UVM_LOW)

endtask

endclass
