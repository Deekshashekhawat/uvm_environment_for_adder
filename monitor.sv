

class monitor extends uvm_monitor;

virtual adder_inf vif;
bit[4:0]sum;


uvm_analysis_port #(transaction) item_collect_port;
transaction pkt;


 `uvm_component_utils(monitor)



function new(string name="monitor",uvm_component parent=null);
super.new(name,parent);
item_collect_port = new("item_collect_port", this);
endfunction

function void build_phase(uvm_phase phase);
if(!uvm_config_db#(virtual adder_inf)::get(this,"","adder_vif",vif))
`uvm_error("monitor","unable to get virtual interface")
super.build_phase(phase);
endfunction

task run_phase(uvm_phase phase);
forever begin
     pkt = transaction::type_id::create("pkt");
      @(posedge vif.clk);
      pkt.a = vif.a;
      pkt.b = vif.b;
      pkt.c = vif.c;
    
     #1;  
      pkt.sum = vif.sum;

`uvm_info("MON",
$sformatf("MONITOR a=%0d b=%0d c=%0d sum=%0d",
          pkt.a,pkt.b,pkt.c,pkt.sum),
UVM_LOW)

      item_collect_port.write(pkt);//this will send the data to scoreboard using anaylsis port

end
endtask


endclass
