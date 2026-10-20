module top(
    input [15:0]sw, 
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0]led
);

wire [3:0] wire_inst;

SimpleMux mux_inst(
    .CEO({sw[3:0]}),
    .Me({sw[7:4]}),
    .Fred({sw[11:8]}),
    .Jill({sw[15:12]}),
    .Sel({btnL, btnU}),
    .Enable(btnC),
    .Y(wire_inst)
);

SimpleDemux demux_inst(
    .In(wire_inst),
    .Sel({btnD, btnR}),
    .Enable(btnC),
    .local_library({led[3:0]}),
    .fire_department({led[7:4]}),
    .school({led[11:8]}),
    .rib_shack({led[15:12]})
);

endmodule