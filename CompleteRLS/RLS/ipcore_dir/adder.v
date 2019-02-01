////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: adder.v
// /___/   /\     Timestamp: Sat Apr 02 19:06:05 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/ipcore_dir/tmp/_cg/adder.ngc C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/ipcore_dir/tmp/_cg/adder.v 
// Device	: 5vlx110tff1136-1
// Input file	: C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/ipcore_dir/tmp/_cg/adder.ngc
// Output file	: C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/ipcore_dir/tmp/_cg/adder.v
// # of Modules	: 1
// Design Name	: adder
// Xilinx        : D:\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module adder (
  add, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input add;
  output [31 : 0] s;
  input [31 : 0] a;
  input [31 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  INV   \blk00000001/blk00000061  (
    .I(add),
    .O(\blk00000001/sig00000062 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000060  (
    .I0(a[0]),
    .I1(add),
    .I2(b[0]),
    .O(\blk00000001/sig00000082 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000005f  (
    .I0(a[1]),
    .I1(add),
    .I2(b[1]),
    .O(\blk00000001/sig0000008d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000005e  (
    .I0(a[2]),
    .I1(add),
    .I2(b[2]),
    .O(\blk00000001/sig00000098 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000005d  (
    .I0(a[3]),
    .I1(add),
    .I2(b[3]),
    .O(\blk00000001/sig0000009b )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000005c  (
    .I0(a[4]),
    .I1(add),
    .I2(b[4]),
    .O(\blk00000001/sig0000009c )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000005b  (
    .I0(a[5]),
    .I1(add),
    .I2(b[5]),
    .O(\blk00000001/sig0000009d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000005a  (
    .I0(a[6]),
    .I1(add),
    .I2(b[6]),
    .O(\blk00000001/sig0000009e )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000059  (
    .I0(a[7]),
    .I1(add),
    .I2(b[7]),
    .O(\blk00000001/sig0000009f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000058  (
    .I0(a[8]),
    .I1(add),
    .I2(b[8]),
    .O(\blk00000001/sig000000a0 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000057  (
    .I0(a[9]),
    .I1(add),
    .I2(b[9]),
    .O(\blk00000001/sig000000a1 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000056  (
    .I0(a[10]),
    .I1(add),
    .I2(b[10]),
    .O(\blk00000001/sig00000083 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000055  (
    .I0(a[11]),
    .I1(add),
    .I2(b[11]),
    .O(\blk00000001/sig00000084 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000054  (
    .I0(a[12]),
    .I1(add),
    .I2(b[12]),
    .O(\blk00000001/sig00000085 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000053  (
    .I0(a[13]),
    .I1(add),
    .I2(b[13]),
    .O(\blk00000001/sig00000086 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000052  (
    .I0(a[14]),
    .I1(add),
    .I2(b[14]),
    .O(\blk00000001/sig00000087 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000051  (
    .I0(a[15]),
    .I1(add),
    .I2(b[15]),
    .O(\blk00000001/sig00000088 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000050  (
    .I0(a[16]),
    .I1(add),
    .I2(b[16]),
    .O(\blk00000001/sig00000089 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000004f  (
    .I0(a[17]),
    .I1(add),
    .I2(b[17]),
    .O(\blk00000001/sig0000008a )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000004e  (
    .I0(a[18]),
    .I1(add),
    .I2(b[18]),
    .O(\blk00000001/sig0000008b )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000004d  (
    .I0(a[19]),
    .I1(add),
    .I2(b[19]),
    .O(\blk00000001/sig0000008c )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000004c  (
    .I0(a[20]),
    .I1(add),
    .I2(b[20]),
    .O(\blk00000001/sig0000008e )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000004b  (
    .I0(a[21]),
    .I1(add),
    .I2(b[21]),
    .O(\blk00000001/sig0000008f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000004a  (
    .I0(a[22]),
    .I1(add),
    .I2(b[22]),
    .O(\blk00000001/sig00000090 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000049  (
    .I0(a[23]),
    .I1(add),
    .I2(b[23]),
    .O(\blk00000001/sig00000091 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000048  (
    .I0(a[24]),
    .I1(add),
    .I2(b[24]),
    .O(\blk00000001/sig00000092 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000047  (
    .I0(a[25]),
    .I1(add),
    .I2(b[25]),
    .O(\blk00000001/sig00000093 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000046  (
    .I0(a[26]),
    .I1(add),
    .I2(b[26]),
    .O(\blk00000001/sig00000094 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000045  (
    .I0(a[27]),
    .I1(add),
    .I2(b[27]),
    .O(\blk00000001/sig00000095 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000044  (
    .I0(a[28]),
    .I1(add),
    .I2(b[28]),
    .O(\blk00000001/sig00000096 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000043  (
    .I0(a[29]),
    .I1(add),
    .I2(b[29]),
    .O(\blk00000001/sig00000097 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000042  (
    .I0(a[30]),
    .I1(add),
    .I2(b[30]),
    .O(\blk00000001/sig00000099 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000041  (
    .I0(a[31]),
    .I1(add),
    .I2(b[31]),
    .O(\blk00000001/sig0000009a )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000062 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig00000063 )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig00000082 ),
    .O(s[0])
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig0000007a ),
    .LI(\blk00000001/sig0000009a ),
    .O(s[31])
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000063 ),
    .DI(a[1]),
    .S(\blk00000001/sig0000008d ),
    .O(\blk00000001/sig0000006e )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig0000008d ),
    .O(s[1])
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000006e ),
    .DI(a[2]),
    .S(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig00000079 )
  );
  XORCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000006e ),
    .LI(\blk00000001/sig00000098 ),
    .O(s[2])
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000079 ),
    .DI(a[3]),
    .S(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig0000007b )
  );
  XORCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig00000079 ),
    .LI(\blk00000001/sig0000009b ),
    .O(s[3])
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000007b ),
    .DI(a[4]),
    .S(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000007c )
  );
  XORCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig0000007b ),
    .LI(\blk00000001/sig0000009c ),
    .O(s[4])
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig0000007c ),
    .DI(a[5]),
    .S(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig0000007d )
  );
  XORCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig0000007c ),
    .LI(\blk00000001/sig0000009d ),
    .O(s[5])
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig0000007d ),
    .DI(a[6]),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig0000007e )
  );
  XORCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig0000007d ),
    .LI(\blk00000001/sig0000009e ),
    .O(s[6])
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig0000007e ),
    .DI(a[7]),
    .S(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig0000007f )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig0000007e ),
    .LI(\blk00000001/sig0000009f ),
    .O(s[7])
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig0000007f ),
    .DI(a[8]),
    .S(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig00000080 )
  );
  XORCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig0000007f ),
    .LI(\blk00000001/sig000000a0 ),
    .O(s[8])
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000080 ),
    .DI(a[9]),
    .S(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig00000081 )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000080 ),
    .LI(\blk00000001/sig000000a1 ),
    .O(s[9])
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000081 ),
    .DI(a[10]),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig00000064 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000081 ),
    .LI(\blk00000001/sig00000083 ),
    .O(s[10])
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000064 ),
    .DI(a[11]),
    .S(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig00000065 )
  );
  XORCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000064 ),
    .LI(\blk00000001/sig00000084 ),
    .O(s[11])
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000065 ),
    .DI(a[12]),
    .S(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig00000066 )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000065 ),
    .LI(\blk00000001/sig00000085 ),
    .O(s[12])
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000066 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig00000067 )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000066 ),
    .LI(\blk00000001/sig00000086 ),
    .O(s[13])
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000067 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig00000068 )
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000067 ),
    .LI(\blk00000001/sig00000087 ),
    .O(s[14])
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000068 ),
    .DI(a[15]),
    .S(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig00000069 )
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000068 ),
    .LI(\blk00000001/sig00000088 ),
    .O(s[15])
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000069 ),
    .DI(a[16]),
    .S(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig0000006a )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000069 ),
    .LI(\blk00000001/sig00000089 ),
    .O(s[16])
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig0000006a ),
    .DI(a[17]),
    .S(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig0000006b )
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000006a ),
    .LI(\blk00000001/sig0000008a ),
    .O(s[17])
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000006b ),
    .DI(a[18]),
    .S(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig0000006c )
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000006b ),
    .LI(\blk00000001/sig0000008b ),
    .O(s[18])
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000006c ),
    .DI(a[19]),
    .S(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig0000006d )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000006c ),
    .LI(\blk00000001/sig0000008c ),
    .O(s[19])
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000006d ),
    .DI(a[20]),
    .S(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig0000006f )
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000006d ),
    .LI(\blk00000001/sig0000008e ),
    .O(s[20])
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000006f ),
    .DI(a[21]),
    .S(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig00000070 )
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000006f ),
    .LI(\blk00000001/sig0000008f ),
    .O(s[21])
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000070 ),
    .DI(a[22]),
    .S(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig00000071 )
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000070 ),
    .LI(\blk00000001/sig00000090 ),
    .O(s[22])
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000071 ),
    .DI(a[23]),
    .S(\blk00000001/sig00000091 ),
    .O(\blk00000001/sig00000072 )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000071 ),
    .LI(\blk00000001/sig00000091 ),
    .O(s[23])
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000072 ),
    .DI(a[24]),
    .S(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig00000073 )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000072 ),
    .LI(\blk00000001/sig00000092 ),
    .O(s[24])
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000073 ),
    .DI(a[25]),
    .S(\blk00000001/sig00000093 ),
    .O(\blk00000001/sig00000074 )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000073 ),
    .LI(\blk00000001/sig00000093 ),
    .O(s[25])
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000074 ),
    .DI(a[26]),
    .S(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig00000075 )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000074 ),
    .LI(\blk00000001/sig00000094 ),
    .O(s[26])
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000075 ),
    .DI(a[27]),
    .S(\blk00000001/sig00000095 ),
    .O(\blk00000001/sig00000076 )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000075 ),
    .LI(\blk00000001/sig00000095 ),
    .O(s[27])
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000076 ),
    .DI(a[28]),
    .S(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000076 ),
    .LI(\blk00000001/sig00000096 ),
    .O(s[28])
  );
  MUXCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000077 ),
    .DI(a[29]),
    .S(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000078 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000077 ),
    .LI(\blk00000001/sig00000097 ),
    .O(s[29])
  );
  MUXCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000078 ),
    .DI(a[30]),
    .S(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig0000007a )
  );
  XORCY   \blk00000001/blk00000002  (
    .CI(\blk00000001/sig00000078 ),
    .LI(\blk00000001/sig00000099 ),
    .O(s[30])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
