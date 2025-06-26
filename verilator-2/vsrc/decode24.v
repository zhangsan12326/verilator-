module decode24(x,en,y);
input [1:0] x;
input en;
output reg [3:0]y;

always@(x or en)
if(en)
begin
case(x)
2'b00:y=4'b0001;
2'b01:y=4'b0010;
2'b10:y=4'b0100;
2'b11:y=4'b1000;
endcase
end
else y=4'b0000;
endmodule
