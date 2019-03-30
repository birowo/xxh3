// Code generated by command: go run avx.go. DO NOT EDIT.

#include "textflag.h"

DATA prime_avx<>+0(SB)/4, $0x9e3779b1
GLOBL prime_avx<>(SB), RODATA|NOPTR, $4

// func accum_avx(acc *[8]uint64, data *byte, key *byte, len uint64)
TEXT ·accum_avx(SB), NOSPLIT, $0-32
	MOVQ acc+0(FP), AX
	MOVQ data+8(FP), CX
	MOVQ key+16(FP), DX
	MOVQ len+24(FP), BX

load:
	VMOVDQU      (AX), Y1
	VMOVDQU      32(AX), Y2
	VPBROADCASTQ prime_avx<>+0(SB), Y0

accum_large:
	CMPQ     BX, $0x00000400
	JLT      accum
	VMOVDQU  (CX), Y3
	VPADDD   (DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  32(CX), Y3
	VPADDD   32(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  64(CX), Y3
	VPADDD   8(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  96(CX), Y3
	VPADDD   40(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  128(CX), Y3
	VPADDD   16(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  160(CX), Y3
	VPADDD   48(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  192(CX), Y3
	VPADDD   24(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  224(CX), Y3
	VPADDD   56(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  256(CX), Y3
	VPADDD   32(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  288(CX), Y3
	VPADDD   64(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  320(CX), Y3
	VPADDD   40(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  352(CX), Y3
	VPADDD   72(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  384(CX), Y3
	VPADDD   48(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  416(CX), Y3
	VPADDD   80(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  448(CX), Y3
	VPADDD   56(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  480(CX), Y3
	VPADDD   88(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  512(CX), Y3
	VPADDD   64(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  544(CX), Y3
	VPADDD   96(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  576(CX), Y3
	VPADDD   72(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  608(CX), Y3
	VPADDD   104(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  640(CX), Y3
	VPADDD   80(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  672(CX), Y3
	VPADDD   112(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  704(CX), Y3
	VPADDD   88(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  736(CX), Y3
	VPADDD   120(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  768(CX), Y3
	VPADDD   96(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  800(CX), Y3
	VPADDD   128(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  832(CX), Y3
	VPADDD   104(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  864(CX), Y3
	VPADDD   136(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  896(CX), Y3
	VPADDD   112(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  928(CX), Y3
	VPADDD   144(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	VMOVDQU  960(CX), Y3
	VPADDD   120(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y1, Y3, Y1
	VMOVDQU  992(CX), Y3
	VPADDD   152(DX), Y3, Y4
	VPSHUFD  $0xf5, Y4, Y5
	VPMULUDQ Y5, Y4, Y4
	VPADDQ   Y3, Y4, Y3
	VPADDQ   Y2, Y3, Y2
	ADDQ     $0x00000400, CX
	ADDQ     $0x00000080, DX
	SUBQ     $0x00000400, BX
	VPSRLQ   $0x2f, Y1, Y3
	VPXOR    Y1, Y3, Y3
	VPXOR    (DX), Y3, Y3
	VPMULUDQ Y0, Y3, Y1
	VPSHUFD  $0xf5, Y3, Y3
	VPMULUDQ Y0, Y3, Y3
	VPSLLQ   $0x20, Y3, Y3
	VPADDQ   Y1, Y3, Y1
	VPSRLQ   $0x2f, Y2, Y3
	VPXOR    Y2, Y3, Y3
	VPXOR    32(DX), Y3, Y3
	VPMULUDQ Y0, Y3, Y2
	VPSHUFD  $0xf5, Y3, Y3
	VPMULUDQ Y0, Y3, Y3
	VPSLLQ   $0x20, Y3, Y3
	VPADDQ   Y2, Y3, Y2
	MOVQ     key+16(FP), DX
	JMP      accum_large

accum:
	CMPQ     BX, $0x40
	JLT      finalize
	VMOVDQU  (CX), Y0
	VPADDD   (DX), Y0, Y3
	VPSHUFD  $0xf5, Y3, Y4
	VPMULUDQ Y4, Y3, Y3
	VPADDQ   Y0, Y3, Y0
	VPADDQ   Y1, Y0, Y1
	VMOVDQU  32(CX), Y0
	VPADDD   32(DX), Y0, Y3
	VPSHUFD  $0xf5, Y3, Y4
	VPMULUDQ Y4, Y3, Y3
	VPADDQ   Y0, Y3, Y0
	VPADDQ   Y2, Y0, Y2
	ADDQ     $0x00000040, CX
	ADDQ     $0x00000008, DX
	SUBQ     $0x00000040, BX
	JMP      accum

finalize:
	CMPQ     BX, $0x00
	JE       return
	SUBQ     $0x40, CX
	ADDQ     BX, CX
	VMOVDQU  (CX), Y0
	VPADDD   (DX), Y0, Y3
	VPSHUFD  $0xf5, Y3, Y4
	VPMULUDQ Y4, Y3, Y3
	VPADDQ   Y0, Y3, Y0
	VPADDQ   Y1, Y0, Y1
	VMOVDQU  32(CX), Y0
	VPADDD   32(DX), Y0, Y3
	VPSHUFD  $0xf5, Y3, Y4
	VPMULUDQ Y4, Y3, Y3
	VPADDQ   Y0, Y3, Y0
	VPADDQ   Y2, Y0, Y2

return:
	VMOVDQU Y1, (AX)
	VMOVDQU Y2, 32(AX)
	RET
