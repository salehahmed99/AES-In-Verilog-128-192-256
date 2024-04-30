module Decryption#(parameter Nr=14,parameter Nk=8)(clk,plain_text,key,cipher_text);
  input clk;
  input wire[0:127] plain_text;
  input wire [0:32*Nk-1] key;
  output [0:127] cipher_text;
  wire [0:128*Nr-1] fullkeys;
  wire [0:127] Instates;
  reg [0:127] InstatesReg = 0;
  assign Instates = InstatesReg;

  wire [0:127] Outstates;

  wire [0:127] subBytesFinalStateWire;
  reg [0:127] subBytesFinalStateReg;
  assign subBytesFinalStateWire = subBytesFinalStateReg;
  wire [0:127] afterSubBFinal;
  wire [0:127] afterShiftRowsFinal;
  integer roundNum=0;
  keySchedule #(Nr,Nk) ke (key,fullkeys);


  //intermediate steps
  Decryption_Round rndx(Instates,fullkeys[(roundNum-1)*128+:128],Outstates);

  //final rounds' steps
  InvSubBytes s_final(subBytesFinalStateWire, afterSubBFinal);
  InverseShiftRows sr_final(afterSubBFinal, afterShiftRowsFinal);
  assign cipher_text = addRoundKey(afterShiftRowsFinal, fullkeys[roundNum*128+:128]);


  always@(posedge clk)
  begin
    if(roundNum ==0)
    begin
      InstatesReg=plain_text^key[0:127];
      roundNum=roundNum+1;
    end
    else if(roundNum <Nr-1)
    begin
      InstatesReg=Outstates;
      roundNum=roundNum+1;
    end
    else if(roundNum==Nr-1)
    begin
      subBytesFinalStateReg=Outstates;
    end
  end

  function [127:0]addRoundKey;
    input [127:0] crtState;
    input [127:0] crtRoundKey;
    begin
      addRoundKey = crtState^crtRoundKey;
    end
  endfunction
endmodule
