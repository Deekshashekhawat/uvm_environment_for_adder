
class scoreboard extends uvm_scoreboard;

uvm_analysis_imp#(transaction,scoreboard) item_collect_export;

transaction item_q[$];

`uvm_component_utils(scoreboard);

function new(string name="scoreboard",uvm_component parent=null);
super.new(name,parent);
item_collect_export=new("item_collect_export",this);
endfunction

function void build_phase(uvm_phase phase);
super.build_phase(phase);
endfunction

function void write(transaction pkt);
item_q.push_back(pkt);
endfunction



task run_phase (uvm_phase phase);
    transaction sb_item;//scoreboard item

    forever begin
      wait(item_q.size > 0);
      
      if(item_q.size > 0) begin
        sb_item = item_q.pop_front();
        $display("----------------------------------------------------------------------------------------------------------");
        if(sb_item.a + sb_item.b+sb_item.c == sb_item.sum) begin
          `uvm_info(get_type_name, $sformatf("Matched: a = %0d, b = %0d, c = %0d, sum = %0d", sb_item.a, sb_item.b, sb_item.c,sb_item.sum),UVM_LOW);
        end
        else begin
          `uvm_error(get_name, $sformatf("NOT matched:  a = %0d, b = %0d, c = %0d, sum = %0d", sb_item.a, sb_item.b, sb_item.c,sb_item.sum));
        end
        $display("----------------------------------------------------------------------------------------------------------");
      end
    end
  endtask

endclass