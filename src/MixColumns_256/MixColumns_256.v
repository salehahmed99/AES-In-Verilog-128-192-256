module MixColumns_256(A,B);

input [255:0] A;
output [255:0] B; 

// Split the 192-bit input into six 32-bit segments
wire [31:0] input_wires[7:0];

  assign input_wires[0] = A[255:224];
  assign input_wires[1] = A[223:192];
  assign input_wires[2] = A[191:160];
  assign input_wires[3] = A[159:128];
  assign input_wires[4] = A[127:96];
  assign input_wires[5] = A[95:64];
  assign input_wires[6] = A[63:32];
  assign input_wires[7] = A[31:0];

// Outputs for each MixColumns instance
wire [31:0] output_wires[7:0];

// Instantiate the MixColumns module six times
  MxColumns mix0(input_wires[0][31:24], input_wires[0][23:16], input_wires[0][15:8], input_wires[0][7:0],
                 output_wires[0][31:24], output_wires[0][23:16], output_wires[0][15:8], output_wires[0][7:0]);


  MxColumns mix1(input_wires[1][31:24], input_wires[1][23:16], input_wires[1][15:8], input_wires[1][7:0],
                 output_wires[1][31:24], output_wires[1][23:16], output_wires[1][15:8], output_wires[1][7:0]);


MxColumns mix2(input_wires[2][31:24], input_wires[2][23:16], input_wires[2][15:8], input_wires[2][7:0],
               output_wires[2][31:24], output_wires[2][23:16], output_wires[2][15:8], output_wires[2][7:0]);


MxColumns mix3(input_wires[3][31:24], input_wires[3][23:16], input_wires[3][15:8], input_wires[3][7:0],
               output_wires[3][31:24], output_wires[3][23:16], output_wires[3][15:8], output_wires[3][7:0]);


MxColumns mix4(input_wires[4][31:24], input_wires[4][23:16], input_wires[4][15:8], input_wires[4][7:0],
               output_wires[4][31:24], output_wires[4][23:16], output_wires[4][15:8], output_wires[4][7:0]);

MxColumns mix5(input_wires[5][31:24], input_wires[5][23:16], input_wires[5][15:8], input_wires[5][7:0],
               output_wires[5][31:24], output_wires[5][23:16], output_wires[5][15:8], output_wires[5][7:0]);

MxColumns mix6(input_wires[6][31:24], input_wires[6][23:16], input_wires[6][15:8], input_wires[6][7:0],
               output_wires[6][31:24], output_wires[6][23:16], output_wires[6][15:8], output_wires[6][7:0]);

MxColumns mix7(input_wires[7][31:24], input_wires[7][23:16], input_wires[7][15:8], input_wires[7][7:0],
               output_wires[7][31:24], output_wires[7][23:16], output_wires[7][15:8], output_wires[7][7:0]);		  
							  
// Combine the 32-bit segments into the 192-bit output
  assign B[255:224] = output_wires[0];
  assign B[223:192] = output_wires[1];
  assign B[191:160] = output_wires[2];
  assign B[159:128] = output_wires[3];
  assign B[127:96] = output_wires[4];
  assign B[95:64] = output_wires[5];
  assign B[63:32] = output_wires[6];
  assign B[31:0] = output_wires[7];

endmodule



module MxColumns(A0,A1,A2,A3,B0,B1,B2,B3);

input [7:0]A0;
input [7:0]A1;
input [7:0]A2;
input [7:0]A3;

output [7:0]B0;
output [7:0]B1;
output [7:0]B2;
output [7:0]B3;

wire [7:0]a0;
wire [7:0]a1;
wire [7:0]a2;
wire [7:0]a3;

wire [7:0]b0;
wire [7:0]b1;
wire [7:0]b2;
wire [7:0]b3;

wire [3:0]temp;

assign a0 = A0;
assign temp[0] = a0 >> 7;
assign b0 = (A0 << 1) ^ (temp[0] * 8'h1B);

assign a1 = A1;
assign temp[1] = a1 >> 7;
assign b1 = (A1 << 1) ^ (temp[1] * 8'h1B);

assign a2 = A2;
assign temp[2] = a2 >> 7;
assign b2 = (A2 << 1) ^ (temp[2] * 8'h1B);

assign a3 = A3;
assign temp[3] = a3 >> 7;
assign b3 = (A3 << 1) ^ (temp[3] * 8'h1B);

assign B0 = b0 ^ a3 ^ a2 ^ b1 ^ a1;
assign B1 = b1 ^ a0 ^ a3 ^ b2 ^ a2;
assign B2 = b2 ^ a1 ^ a0 ^ b3 ^ a3;
assign B3 = b3 ^ a2 ^ a1 ^ b0 ^ a0;

endmodule