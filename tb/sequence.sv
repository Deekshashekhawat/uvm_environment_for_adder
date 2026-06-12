`include "transaction.sv"
class sequence1 extends uvm_sequence#(transaction);

transaction pkt;

`uvm_object_utils(sequence1)

function new(string name="sequence1");
super.new(name);
endfunction

task body();
repeat(1000)begin
pkt= transaction::type_id::create("pkt");
start_item(pkt);
assert(pkt.randomize());
finish_item(pkt);
end

endtask

endclass
