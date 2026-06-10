class monitor extends uvm_monitor
virtual adder_inf vif;
bit[4:0]sum;
 `uvm_component_utils_begin(monitor)
   `uvm_field_int(sum,UVM_DEFAULT)
 `uvm_component_utils_end

covergroup cg;
 a:coverpoint vif.a;
 b:coverpoint vif.b;
 c:coverpoint vif.c; 
cross a,b,c;
endgroup

function new(string name,uvm_component parent);
super.new(name,parent);
cg=new;
endfunction

function void build_phase(uvm_phase phase);
if(!uvm_config_db#(virtual adder_inf)::get(this,"",add_vif,vif))
`uvm_error("monitor","unable to get virtual interface")
super.build_phase(phase);
endfunction

task run_phase(uvm_phase phase);
forever predict_and_compare();
endtask

task predict_and_compare();
@(posedge vif.clk);
cg.sample;
sum=vif.a+vif.b+vif.c;
@(posedge vif.clk);
if(sum!=vif.sum)
 `uvm_error("Monitor","Result Mismatch")

endtask

endclass
