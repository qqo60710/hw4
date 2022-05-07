module bcd(clk, rst_syn,out,load,seg,Din); 
input clk,load;
input rst_syn;
input Din;
output[3:0] out;
reg [3:0] out;
output [7:0] seg;
reg [7:0] seg;

always@ (posedge clk)
begin
    if(!rst_syn)
        out=0;
    else if (load) 
        out <=Din; 
    else if(out ==9)
        out=0;
    else    
        out=out+1;
end
always @(out)
    begin
        case (out) 
            0 : seg = 8'b11000000;
            1 : seg = 8'b11111001;
            2 : seg = 8'b10100100;
            3 : seg = 8'b10110000;
            4 : seg = 8'b10011001;
            5 : seg = 8'b10010010;
            6 : seg = 8'b10000010;
            7 : seg = 8'b11111000;
            8 : seg = 8'b10000000;
            9 : seg = 8'b10010000;
            10: seg = 8'b10100000;
            11: seg = 8'b10100111;
            13: seg = 8'b10100001;
            14: seg = 8'b10000100;
            15: seg = 8'b11110001;
            default : seg = 8'b11111111; 
        endcase
    end
endmodule