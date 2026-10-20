module SimpleMux(
    input [1:0] Sel,
    input [3:0] CEO, [3:0] Me, [3:0] Fred, [3:0] Jill, Enable,
    output [3:0] Y
);

    assign Y = (Sel[0] == 0 && Sel[1] == 0 && Enable) ? CEO :
               (Sel[0] == 0 && Sel[1] == 1 && Enable) ? Me :
               (Sel[0] == 1 && Sel[1] == 0 && Enable) ? Fred : Jill;
               

endmodule