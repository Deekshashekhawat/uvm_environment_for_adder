
class env extends uvm_env;

`uvm_component_utils(env)

agent ag;
scoreboard sc;

function new(string name ="environment",uvm_component parent=null);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
super.build_phase(phase);
uvm_config_db#(bit)::set(this,"ag","is_active",1);
ag=agent::type_id::create("ag",this);
sc=scoreboard::type_id::create("sc",this);
endfunction

function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
ag.mon.item_collect_port.connect(sc.item_collect_export);
endfunction

endclass
