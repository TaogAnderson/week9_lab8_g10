module SimpleDemux(
    input [3:0] In,
    input [1:0]Sel,
    input Enable,
    output [3:0] local_library,
    output [3:0] fire_department,
    output [3:0] school,
    output [3:0] rib_shack
);

    assign local_library = (Sel == 2'b00 && Enable ? In : 0); // Drive Y1 if Sel == 0
    assign fire_department = (Sel == 2'b01 && Enable ? In : 0); // Drive Y2 if Sel == 01
    assign school = (Sel == 2'b10 && Enable ? In : 0); // Drive Y3 if Sel == 10
    assign rib_shack = (Sel == 2'b11 && Enable ? In : 0); // Drive Y4 if Sel == 11

endmodule