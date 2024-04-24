module SubBytes(input [127:0] state , output [127:0] newState);

sbox b0(state[7:0] , newState[7:0]);
sbox b1(state[15:8] , newState[15:8]);
sbox b2(state[23:16] , newState[23:16]);
sbox b3(state[31:24] , newState[31:24]);
sbox b4(state[39:32] , newState[39:32]);
sbox b5(state[47:40] , newState[47:40]);
sbox b6(state[55:48] , newState[55:48]);
sbox b7(state[63:56] , newState[63:56]);
sbox b8(state[71:64] , newState[71:64]);
sbox b9(state[79:72] , newState[79:72]);
sbox b10(state[87:80] , newState[87:80]);
sbox b11(state[95:88] , newState[95:88]);
sbox b12(state[103:96] , newState[103:96]);
sbox b13(state[111:104] , newState[111:104]);
sbox b14(state[119:112] , newState[119:112]);
sbox b15(state[127:120] , newState[127:120]);


endmodule


module sbox(input wire [7: 0] givenData, output wire[7: 0] sboxRes);

assign sboxRes = (givenData == 8'h00) ? 8'h63 :
                 (givenData == 8'h01) ? 8'h7c :
                 (givenData == 8'h02) ? 8'h77 :
                 (givenData == 8'h03) ? 8'h7b :
                 (givenData == 8'h04) ? 8'hf2 :
                 (givenData == 8'h05) ? 8'h6b :
                 (givenData == 8'h06) ? 8'h6f :
                 (givenData == 8'h07) ? 8'hc5 :
                 (givenData == 8'h08) ? 8'h30 :
                 (givenData == 8'h09) ? 8'h01 :
                 (givenData == 8'h0a) ? 8'h67 :
                 (givenData == 8'h0b) ? 8'h2b :
                 (givenData == 8'h0c) ? 8'hfe :
                 (givenData == 8'h0d) ? 8'hd7 :
                 (givenData == 8'h0e) ? 8'hab :
                 (givenData == 8'h0f) ? 8'h76 :
                 (givenData == 8'h10) ? 8'hca :
                 (givenData == 8'h11) ? 8'h82 :
                 (givenData == 8'h12) ? 8'hc9 :
                 (givenData == 8'h13) ? 8'h7d :
                 (givenData == 8'h14) ? 8'hfa :
                 (givenData == 8'h15) ? 8'h59 :
                 (givenData == 8'h16) ? 8'h47 :
                 (givenData == 8'h17) ? 8'hf0 :
                 (givenData == 8'h18) ? 8'had :
                 (givenData == 8'h19) ? 8'hd4 :
                 (givenData == 8'h1a) ? 8'ha2 :
                 (givenData == 8'h1b) ? 8'haf :
                 (givenData == 8'h1c) ? 8'h9c :
                 (givenData == 8'h1d) ? 8'ha4 :
                 (givenData == 8'h1e) ? 8'h72 :
                 (givenData == 8'h1f) ? 8'hc0 :
                 (givenData == 8'h20) ? 8'hb7 :
                 (givenData == 8'h21) ? 8'hfd :
                 (givenData == 8'h22) ? 8'h93 :
                 (givenData == 8'h23) ? 8'h26 :
                 (givenData == 8'h24) ? 8'h36 :
                 (givenData == 8'h25) ? 8'h3f :
                 (givenData == 8'h26) ? 8'hf7 :
                 (givenData == 8'h27) ? 8'hcc :
                 (givenData == 8'h28) ? 8'h34 :
                 (givenData == 8'h29) ? 8'ha5 :
                 (givenData == 8'h2a) ? 8'he5 :
                 (givenData == 8'h2b) ? 8'hf1 :
                 (givenData == 8'h2c) ? 8'h71 :
                 (givenData == 8'h2d) ? 8'hd8 :
                 (givenData == 8'h2e) ? 8'h31 :
                 (givenData == 8'h2f) ? 8'h15 :
                 (givenData == 8'h30) ? 8'h04 :
                 (givenData == 8'h31) ? 8'hc7 :
                 (givenData == 8'h32) ? 8'h23 :
                 (givenData == 8'h33) ? 8'hc3 :
                 (givenData == 8'h34) ? 8'h18 :
                 (givenData == 8'h35) ? 8'h96 :
                 (givenData == 8'h36) ? 8'h05 :
                 (givenData == 8'h37) ? 8'h9a :
                 (givenData == 8'h38) ? 8'h07 :
                 (givenData == 8'h39) ? 8'h12 :
                 (givenData == 8'h3a) ? 8'h80 :
                 (givenData == 8'h3b) ? 8'he2 :
                 (givenData == 8'h3c) ? 8'heb :
                 (givenData == 8'h3d) ? 8'h27 :
                 (givenData == 8'h3e) ? 8'hb2 :
                 (givenData == 8'h3f) ? 8'h75 :
                 (givenData == 8'h40) ? 8'h09 :
                 (givenData == 8'h41) ? 8'h83 :
                 (givenData == 8'h42) ? 8'h2c :
                 (givenData == 8'h43) ? 8'h1a :
                 (givenData == 8'h44) ? 8'h1b :
                 (givenData == 8'h45) ? 8'h6e :
                 (givenData == 8'h46) ? 8'h5a :
                 (givenData == 8'h47) ? 8'ha0 :
                 (givenData == 8'h48) ? 8'h52 :
                 (givenData == 8'h49) ? 8'h3b :
                 (givenData == 8'h4a) ? 8'hd6 :
                 (givenData == 8'h4b) ? 8'hb3 :
                 (givenData == 8'h4c) ? 8'h29 :
                 (givenData == 8'h4d) ? 8'he3 :
                 (givenData == 8'h4e) ? 8'h2f :
                 (givenData == 8'h4f) ? 8'h84 :
                 (givenData == 8'h50) ? 8'h53 :
                 (givenData == 8'h51) ? 8'hd1 :
                 (givenData == 8'h52) ? 8'h00 :
                 (givenData == 8'h53) ? 8'hed :
                 (givenData == 8'h54) ? 8'h20 :
                 (givenData == 8'h55) ? 8'hfc :
                 (givenData == 8'h56) ? 8'hb1 :
                 (givenData == 8'h57) ? 8'h5b :
                 (givenData == 8'h58) ? 8'h6a :
                 (givenData == 8'h59) ? 8'hcb :
                 (givenData == 8'h5a) ? 8'hbe :
                 (givenData == 8'h5b) ? 8'h39 :
                 (givenData == 8'h5c) ? 8'h4a :
                 (givenData == 8'h5d) ? 8'h4c :
                 (givenData == 8'h5e) ? 8'h58 :
                 (givenData == 8'h5f) ? 8'hcf :
                 (givenData == 8'h60) ? 8'hd0 :
                 (givenData == 8'h61) ? 8'hef :
                 (givenData == 8'h62) ? 8'haa :
                 (givenData == 8'h63) ? 8'hfb :
                 (givenData == 8'h64) ? 8'h43 :
                 (givenData == 8'h65) ? 8'h4d :
                 (givenData == 8'h66) ? 8'h33 :
                 (givenData == 8'h67) ? 8'h85 :
                 (givenData == 8'h68) ? 8'h45 :
                 (givenData == 8'h69) ? 8'hf9 :
                 (givenData == 8'h6a) ? 8'h02 :
                 (givenData == 8'h6b) ? 8'h7f :
                 (givenData == 8'h6c) ? 8'h50 :
                 (givenData == 8'h6d) ? 8'h3c :
                 (givenData == 8'h6e) ? 8'h9f :
                 (givenData == 8'h6f) ? 8'ha8 :
                 (givenData == 8'h70) ? 8'h51 :
                 (givenData == 8'h71) ? 8'ha3 :
                 (givenData == 8'h72) ? 8'h40 :
                 (givenData == 8'h73) ? 8'h8f :
                 (givenData == 8'h74) ? 8'h92 :
                 (givenData == 8'h75) ? 8'h9d :
                 (givenData == 8'h76) ? 8'h38 :
                 (givenData == 8'h77) ? 8'hf5 :
                 (givenData == 8'h78) ? 8'hbc :
                 (givenData == 8'h79) ? 8'hb6 :
                 (givenData == 8'h7a) ? 8'hda :
                 (givenData == 8'h7b) ? 8'h21 :
                 (givenData == 8'h7c) ? 8'h10 :
                 (givenData == 8'h7d) ? 8'hff :
                 (givenData == 8'h7e) ? 8'hf3 :
                 (givenData == 8'h7f) ? 8'hd2 :
                 (givenData == 8'h80) ? 8'hcd :
                 (givenData == 8'h81) ? 8'h0c :
                 (givenData == 8'h82) ? 8'h13 :
                 (givenData == 8'h83) ? 8'hec :
                 (givenData == 8'h84) ? 8'h5f :
                 (givenData == 8'h85) ? 8'h97 :
                 (givenData == 8'h86) ? 8'h44 :
                 (givenData == 8'h87) ? 8'h17 :
                 (givenData == 8'h88) ? 8'hc4 :
                 (givenData == 8'h89) ? 8'ha7 :
                 (givenData == 8'h8a) ? 8'h7e :
                 (givenData == 8'h8b) ? 8'h3d :
                 (givenData == 8'h8c) ? 8'h64 :
                 (givenData == 8'h8d) ? 8'h5d :
                 (givenData == 8'h8e) ? 8'h19 :
                 (givenData == 8'h8f) ? 8'h73 :
                 (givenData == 8'h90) ? 8'h60 :
                 (givenData == 8'h91) ? 8'h81 :
                 (givenData == 8'h92) ? 8'h4f :
                 (givenData == 8'h93) ? 8'hdc :
                 (givenData == 8'h94) ? 8'h22 :
                 (givenData == 8'h95) ? 8'h2a :
                 (givenData == 8'h96) ? 8'h90 :
                 (givenData == 8'h97) ? 8'h88 :
                 (givenData == 8'h98) ? 8'h46 :
                 (givenData == 8'h99) ? 8'hee :
                 (givenData == 8'h9a) ? 8'hb8 :
                 (givenData == 8'h9b) ? 8'h14 :
                 (givenData == 8'h9c) ? 8'hde :
                 (givenData == 8'h9d) ? 8'h5e :
                 (givenData == 8'h9e) ? 8'h0b :
                 (givenData == 8'h9f) ? 8'hdb :
                 (givenData == 8'ha0) ? 8'he0 :
                 (givenData == 8'ha1) ? 8'h32 :
                 (givenData == 8'ha2) ? 8'h3a :
                 (givenData == 8'ha3) ? 8'h0a :
                 (givenData == 8'ha4) ? 8'h49 :
                 (givenData == 8'ha5) ? 8'h06 :
                 (givenData == 8'ha6) ? 8'h24 :
                 (givenData == 8'ha7) ? 8'h5c :
                 (givenData == 8'ha8) ? 8'hc2 :
                 (givenData == 8'ha9) ? 8'hd3 :
					  (givenData == 8'haa) ? 8'hac :
                 (givenData == 8'hab) ? 8'h62 :
                 (givenData == 8'hac) ? 8'h91 :
                 (givenData == 8'had) ? 8'h95 :
                 (givenData == 8'hae) ? 8'he4 :
                 (givenData == 8'haf) ? 8'h79 :
                 (givenData == 8'hb0) ? 8'he7 :
                 (givenData == 8'hb1) ? 8'hc8 :
                 (givenData == 8'hb2) ? 8'h37 :
                 (givenData == 8'hb3) ? 8'h6d :
                 (givenData == 8'hb4) ? 8'h8d :
                 (givenData == 8'hb5) ? 8'hd5 :
                 (givenData == 8'hb6) ? 8'h4e :
                 (givenData == 8'hb7) ? 8'ha9 :
                 (givenData == 8'hb8) ? 8'h6c :
                 (givenData == 8'hb9) ? 8'h56 :
                 (givenData == 8'hba) ? 8'hf4 :
                 (givenData == 8'hbb) ? 8'hea :
                 (givenData == 8'hbc) ? 8'h65 :
                 (givenData == 8'hbd) ? 8'h7a :
                 (givenData == 8'hbe) ? 8'hae :
                 (givenData == 8'hbf) ? 8'h08 :
                 (givenData == 8'hc0) ? 8'hba :
                 (givenData == 8'hc1) ? 8'h78 :
                 (givenData == 8'hc2) ? 8'h25 :
                 (givenData == 8'hc3) ? 8'h2e :
                 (givenData == 8'hc4) ? 8'h1c :
                 (givenData == 8'hc5) ? 8'ha6 :
                 (givenData == 8'hc6) ? 8'hb4 :
                 (givenData == 8'hc7) ? 8'hc6 :
                 (givenData == 8'hc8) ? 8'he8 :
                 (givenData == 8'hc9) ? 8'hdd :
                 (givenData == 8'hca) ? 8'h74 :
                 (givenData == 8'hcb) ? 8'h1f :
                 (givenData == 8'hcc) ? 8'h4b :
                 (givenData == 8'hcd) ? 8'hbd :
                 (givenData == 8'hce) ? 8'h8b :
                 (givenData == 8'hcf) ? 8'h8a :
					  (givenData == 8'hd0) ? 8'h70 :
					  (givenData == 8'hd1) ? 8'h3e :
					  (givenData == 8'hd2) ? 8'hb5 :
					  (givenData == 8'hd3) ? 8'h66 :
					  (givenData == 8'hd4) ? 8'h48 :
					  (givenData == 8'hd5) ? 8'h03 :
					  (givenData == 8'hd6) ? 8'hf6 :
					  (givenData == 8'hd7) ? 8'h0e :
					  (givenData == 8'hd8) ? 8'h61 :
					  (givenData == 8'hd9) ? 8'h35 :
					  (givenData == 8'hda) ? 8'h57 :
					  (givenData == 8'hdb) ? 8'hb9 :
					  (givenData == 8'hdc) ? 8'h86 :
					  (givenData == 8'hdd) ? 8'hc1 :
					  (givenData == 8'hde) ? 8'h1d :
					  (givenData == 8'hdf) ? 8'h9e :
					  (givenData == 8'he0) ? 8'he1 :
					  (givenData == 8'he1) ? 8'hf8 :
					  (givenData == 8'he2) ? 8'h98 :
					  (givenData == 8'he3) ? 8'h11 :
					  (givenData == 8'he4) ? 8'h69 :
					  (givenData == 8'he5) ? 8'hd9 :
					  (givenData == 8'he6) ? 8'h8e :
					  (givenData == 8'he7) ? 8'h94 :
					  (givenData == 8'he8) ? 8'h9b :
					  (givenData == 8'he9) ? 8'h1e :
					  (givenData == 8'hea) ? 8'h87 :
					  (givenData == 8'heb) ? 8'he9 :
					  (givenData == 8'hec) ? 8'hce :
					  (givenData == 8'hed) ? 8'h55 :
					  (givenData == 8'hee) ? 8'h28 :
					  (givenData == 8'hef) ? 8'hdf :
					  (givenData == 8'hf0) ? 8'h8c :
					  (givenData == 8'hf1) ? 8'ha1 :
					  (givenData == 8'hf2) ? 8'h89 :
					  (givenData == 8'hf3) ? 8'h0d :
					  (givenData == 8'hf4) ? 8'hbf :
					  (givenData == 8'hf5) ? 8'he6 :
					  (givenData == 8'hf6) ? 8'h42 :
					  (givenData == 8'hf7) ? 8'h68 :
					  (givenData == 8'hf8) ? 8'h41 :
                 (givenData == 8'hf9) ? 8'h99 :
                 (givenData == 8'hfa) ? 8'h2d :
                 (givenData == 8'hfb) ? 8'h0f :
                 (givenData == 8'hfc) ? 8'hb0 :
                 (givenData == 8'hfd) ? 8'h54 :
                 (givenData == 8'hfe) ? 8'hbb : 8'h16;

endmodule