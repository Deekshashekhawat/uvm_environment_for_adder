`include "agent.sv"
class env extends uvm_env;

`uvm_component_utils(env);
agent ag;

function new(string name ="environment",uvm_component parent);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
uvm_config_db#(bit)::set(this,"is_active","ag",1);
ag=agent::type_id::create("ag",this);
endfunction

endclass
