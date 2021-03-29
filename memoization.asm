        text    os.(*File).close(SB), DUPOK|NOSPLIT|ABIInternal, $0-24
        funcdata        $0, gclocals·d4dc2f11db048877dbc0f60a22b4adb3(SB)
        funcdata        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        movq    ""..this+8(SP), AX
        movq    (AX), AX
        movq    AX, ""..this+8(SP)
        xorps   X0, X0
        movups  X0, "".~r0+16(SP)
        jmp     os.(*file).close(SB)
findMaxForm_pc0:
        text    "".findMaxForm(SB), ABIInternal, $168-48
        movq    (TLS), CX
        leaq    -40(SP), AX
        cmpq    AX, 16(CX)
        pcdata  $0, $-2
        jls     findMaxForm_pc1137
        pcdata  $0, $-1
        subq    $168, SP
        movq    BP, 160(SP)
        leaq    160(SP), BP
        funcdata        $0, gclocals·0e942f96b37a3a54dce69fe4b1f12e5a(SB)
        funcdata        $1, gclocals·430a64bb04c11b35dae86d57fc8af1ce(SB)
        funcdata        $3, "".findMaxForm.stkobj(SB)
        leaq    type.[]int(SB), AX
        movq    AX, (SP)
        movq    "".strs+184(SP), CX
        movq    CX, 8(SP)
        movq    CX, 16(SP)
        pcdata  $1, $0
        call    runtime.makeslice(SB)
        movq    24(SP), AX
        movq    AX, "".freqCounts+112(SP)
        movq    "".strs+184(SP), AX
        movq    AX, "".freqCounts+120(SP)
        movq    AX, "".freqCounts+128(SP)
        xorl    CX, CX
        jmp     findMaxForm_pc128
findMaxForm_pc116:
        leaq    1(BX), CX
        movq    "".strs+184(SP), AX
findMaxForm_pc128:
        cmpq    CX, AX
        jge     findMaxForm_pc357
        movq    CX, "".i+72(SP)
        shlq    $4, CX
        movq    CX, ""..autotmp_29+104(SP)
        movq    "".strs+176(SP), DX
        movq    8(CX)(DX*1), BX
        movq    (DX)(CX*1), SI
        movq    SI, (SP)
        movq    BX, 8(SP)
        leaq    go.string."0"(SB), BX
        movq    BX, 16(SP)
        movq    $1, 24(SP)
        pcdata  $1, $1
        call    strings.Count(SB)
        movq    32(SP), AX
        movq    AX, "".numZeros+56(SP)
        movq    "".strs+176(SP), CX
        movq    ""..autotmp_29+104(SP), DX
        movq    8(DX)(CX*1), DX
        movq    DX, ""..autotmp_29+104(SP)
        leaq    type.[2]int(SB), BX
        movq    BX, (SP)
        call    runtime.newobject(SB)
        movq    8(SP), AX
        movq    "".numZeros+56(SP), CX
        movq    CX, (AX)
        movq    ""..autotmp_29+104(SP), DX
        subq    CX, DX
        movq    DX, 8(AX)
        movq    "".freqCounts+112(SP), CX
        movq    "".freqCounts+120(SP), DX
        movq    "".i+72(SP), BX
        cmpq    BX, DX
        jcc     findMaxForm_pc1125
        leaq    (BX)(BX*2), DX
        movq    $2, 8(CX)(DX*8)
        movq    $2, 16(CX)(DX*8)
        leaq    (CX)(DX*8), DI
        pcdata  $0, $-2
        cmpl    runtime.writeBarrier(SB), $0
        jne     findMaxForm_pc345
        movq    AX, (CX)(DX*8)
        jmp     findMaxForm_pc116
findMaxForm_pc345:
        call    runtime.gcWriteBarrier(SB)
        nop
        jmp     findMaxForm_pc116
findMaxForm_pc357:
        pcdata  $0, $-1
        leaq    type.[][]int(SB), CX
        movq    CX, (SP)
        movq    AX, 8(SP)
        movq    AX, 16(SP)
        call    runtime.makeslice(SB)
        movq    24(SP), AX
        movq    AX, "".dp+136(SP)
        movq    "".strs+184(SP), AX
        movq    AX, "".dp+144(SP)
        movq    AX, "".dp+152(SP)
        xorl    CX, CX
        jmp     findMaxForm_pc768
findMaxForm_pc427:
        movq    $-1, (R8)(CX*8)
        incq    CX
findMaxForm_pc438:
        cmpq    CX, DX
        jge     findMaxForm_pc508
        movq    "".dp+136(SP), DI
        movq    "".dp+144(SP), R8
        cmpq    BX, R8
        jcc     findMaxForm_pc1069
        movq    (DI)(SI*8), R8
        movq    8(DI)(SI*8), DI
        nop
        cmpq    DI, AX
        jls     findMaxForm_pc1061
        movq    8(R8)(R9*8), DI
        movq    (R8)(R9*8), R8
        cmpq    DI, CX
        jhi     findMaxForm_pc427
        jmp     findMaxForm_pc1046
findMaxForm_pc508:
        leaq    1(AX), CX
        movq    ""..autotmp_30+96(SP), AX
findMaxForm_pc517:
        cmpq    AX, CX
        jle     findMaxForm_pc750
        movq    CX, "".j+64(SP)
        leaq    type.int(SB), AX
        movq    AX, (SP)
        movq    "".n+208(SP), CX
        leaq    1(CX), DX
        movq    DX, ""..autotmp_31+88(SP)
        movq    DX, 8(SP)
        movq    DX, 16(SP)
        pcdata  $1, $2
        call    runtime.makeslice(SB)
        movq    "".dp+136(SP), AX
        movq    "".dp+144(SP), CX
        movq    24(SP), DX
        movq    "".i+80(SP), BX
        nop
        cmpq    CX, BX
        jls     findMaxForm_pc1098
        movq    ""..autotmp_29+104(SP), SI
        movq    (AX)(SI*8), R8
        movq    8(AX)(SI*8), CX
        movq    "".j+64(SP), AX
        nop
        cmpq    AX, CX
        jcc     findMaxForm_pc1093
        leaq    (AX)(AX*2), R9
        movq    ""..autotmp_31+88(SP), R10
        movq    R10, 8(R8)(R9*8)
        movq    R10, 16(R8)(R9*8)
        leaq    (R8)(R9*8), DI
        pcdata  $0, $-2
        cmpl    runtime.writeBarrier(SB), $0
        jne     findMaxForm_pc743
        movq    DX, (R8)(R9*8)
findMaxForm_pc685:
        pcdata  $0, $-1
        movq    "".dp+136(SP), DX
        movq    "".dp+144(SP), CX
        nop
        cmpq    BX, CX
        jcc     findMaxForm_pc1085
        movq    8(DX)(SI*8), CX
        movq    (DX)(SI*8), DX
        cmpq    CX, AX
        jls     findMaxForm_pc1080
        movq    8(DX)(R9*8), DX
        xorl    CX, CX
        jmp     findMaxForm_pc438
findMaxForm_pc743:
        pcdata  $0, $-2
        call    runtime.gcWriteBarrierDX(SB)
        jmp     findMaxForm_pc685
findMaxForm_pc750:
        pcdata  $0, $-1
        leaq    1(BX), CX
        movq    "".strs+184(SP), AX
        nop
findMaxForm_pc768:
        cmpq    CX, AX
        jge     findMaxForm_pc950
        movq    CX, "".i+80(SP)
        leaq    type.[]int(SB), AX
        movq    AX, (SP)
        movq    "".m+200(SP), CX
        leaq    1(CX), DX
        movq    DX, ""..autotmp_29+104(SP)
        movq    DX, 8(SP)
        movq    DX, 16(SP)
        call    runtime.makeslice(SB)
        movq    "".dp+136(SP), AX
        movq    "".dp+144(SP), CX
        movq    24(SP), DX
        movq    "".i+80(SP), BX
        cmpq    CX, BX
        jls     findMaxForm_pc1114
        leaq    (BX)(BX*2), SI
        movq    ""..autotmp_29+104(SP), R8
        movq    R8, 8(AX)(SI*8)
        movq    R8, 16(AX)(SI*8)
        leaq    (AX)(SI*8), DI
        pcdata  $0, $-2
        cmpl    runtime.writeBarrier(SB), $0
        jne     findMaxForm_pc943
        movq    DX, (AX)(SI*8)
findMaxForm_pc896:
        pcdata  $0, $-1
        movq    "".dp+144(SP), CX
        movq    "".dp+136(SP), DX
        cmpq    BX, CX
        jcc     findMaxForm_pc1106
        movq    SI, ""..autotmp_29+104(SP)
        movq    8(DX)(SI*8), AX
        movq    AX, ""..autotmp_30+96(SP)
        xorl    CX, CX
        jmp     findMaxForm_pc517
findMaxForm_pc943:
        pcdata  $0, $-2
        call    runtime.gcWriteBarrierDX(SB)
        jmp     findMaxForm_pc896
findMaxForm_pc950:
        pcdata  $0, $-1
        movq    $0, (SP)
        movq    "".m+200(SP), CX
        movq    CX, 8(SP)
        movq    "".n+208(SP), CX
        movq    CX, 16(SP)
        movq    AX, 24(SP)
        leaq    "".freqCounts+112(SP), AX
        movq    AX, 32(SP)
        leaq    "".dp+136(SP), AX
        movq    AX, 40(SP)
        pcdata  $1, $3
        call    "".dfs(SB)
        movq    48(SP), AX
        movq    AX, "".~r3+216(SP)
        movq    160(SP), BP
        addq    $168, SP
        ret
findMaxForm_pc1046:
        movq    CX, AX
        movq    DI, CX
        nop
        call    runtime.panicIndex(SB)
findMaxForm_pc1061:
        movq    DI, CX
        call    runtime.panicIndex(SB)
findMaxForm_pc1069:
        movq    BX, AX
        movq    R8, CX
        call    runtime.panicIndex(SB)
findMaxForm_pc1080:
        call    runtime.panicIndex(SB)
findMaxForm_pc1085:
        movq    BX, AX
        call    runtime.panicIndex(SB)
findMaxForm_pc1093:
        call    runtime.panicIndex(SB)
findMaxForm_pc1098:
        movq    BX, AX
        call    runtime.panicIndex(SB)
findMaxForm_pc1106:
        movq    BX, AX
        call    runtime.panicIndex(SB)
findMaxForm_pc1114:
        movq    BX, AX
        nop
        call    runtime.panicIndex(SB)
findMaxForm_pc1125:
        movq    BX, AX
        movq    DX, CX
        call    runtime.panicIndex(SB)
        xchgl   AX, AX
findMaxForm_pc1137:
        nop
        pcdata  $1, $-1
        pcdata  $0, $-2
        call    runtime.morestack_noctxt(SB)
        pcdata  $0, $-1
        jmp     findMaxForm_pc0
dfs_pc0:
        text    "".dfs(SB), ABIInternal, $96-56
        movq    (TLS), CX
        cmpq    SP, 16(CX)
        pcdata  $0, $-2
        jls     dfs_pc608
        pcdata  $0, $-1
        subq    $96, SP
        movq    BP, 88(SP)
        leaq    88(SP), BP
        funcdata        $0, gclocals·e3fac5918b61e5dbcb81b32879cb447a(SB)
        funcdata        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        movq    "".idx+104(SP), AX
        movq    "".strsLen+128(SP), DX
        cmpq    AX, DX
        jeq     dfs_pc501
        movq    "".dp+144(SP), BX
        movq    (BX), SI
        movq    8(BX), CX
        cmpq    AX, CX
        jcc     dfs_pc597
        leaq    (AX)(AX*2), DI
        movq    (SI)(DI*8), R8
        movq    8(SI)(DI*8), CX
        movq    "".numZeros+112(SP), SI
        cmpq    SI, CX
        jcc     dfs_pc589
        leaq    (SI)(SI*2), R9
        movq    8(R8)(R9*8), CX
        movq    (R8)(R9*8), R8
        movq    "".numOnes+120(SP), R10
        nop
        cmpq    R10, CX
        jcc     dfs_pc581
        movq    (R8)(R10*8), R8
        cmpq    R8, $-1
        jgt     dfs_pc483
        movq    R9, ""..autotmp_14+80(SP)
        movq    DI, ""..autotmp_15+72(SP)
        movq    "".freqCounts+136(SP), R8
        movq    AX, CX
        xorl    R11, R11
        jmp     dfs_pc192
dfs_pc177:
        incq    AX
        movq    R15, SI
        movq    R13, R10
        nop
dfs_pc192:
        cmpq    DX, AX
        jle     dfs_pc421
        movq    (R8), R12
        movq    8(R8), R13
        cmpq    R13, AX
        jls     dfs_pc573
        leaq    (AX)(AX*2), R13
        movq    8(R12)(R13*8), R14
        movq    (R12)(R13*8), R12
        testq   R14, R14
        jls     dfs_pc563
        movq    (R12), R13
        movq    SI, R15
        subq    R13, SI
        nop
        cmpq    R14, $1
        jls     dfs_pc550
        movq    8(R12), R12
        movq    R10, R13
        subq    R12, R10
        cmpq    SI, $-1
        jle     dfs_pc177
        nop
        cmpq    R10, $-1
        jle     dfs_pc177
        movq    AX, "".i+64(SP)
        movq    R11, "".maxSubSets+56(SP)
        leaq    1(AX), CX
        movq    CX, (SP)
        movq    SI, 8(SP)
        movq    R10, 16(SP)
        movq    DX, 24(SP)
        movq    R8, 32(SP)
        movq    BX, 40(SP)
        pcdata  $1, $0
        call    "".dfs(SB)
        movq    48(SP), AX
        incq    AX
        movq    "".maxSubSets+56(SP), R11
        cmpq    AX, R11
        cmovqgt AX, R11
        movq    "".i+64(SP), AX
        movq    "".idx+104(SP), CX
        movq    "".strsLen+128(SP), DX
        movq    "".dp+144(SP), BX
        movq    ""..autotmp_15+72(SP), DI
        movq    "".freqCounts+136(SP), R8
        movq    ""..autotmp_14+80(SP), R9
        movq    "".numOnes+120(SP), R13
        movq    "".numZeros+112(SP), R15
        jmp     dfs_pc177
dfs_pc421:
        movq    (BX), DX
        movq    8(BX), BX
        cmpq    CX, BX
        jcc     dfs_pc539
        movq    (DX)(DI*8), BX
        movq    8(DX)(DI*8), CX
        cmpq    SI, CX
        jcc     dfs_pc531
        movq    8(BX)(R9*8), CX
        movq    (BX)(R9*8), DX
        cmpq    R10, CX
        jcc     dfs_pc523
        movq    R11, (DX)(R10*8)
        movq    R11, "".~r6+152(SP)
        movq    88(SP), BP
        addq    $96, SP
        ret
dfs_pc483:
        movq    R8, "".~r6+152(SP)
        movq    88(SP), BP
        addq    $96, SP
        ret
dfs_pc501:
        movq    $0, "".~r6+152(SP)
        movq    88(SP), BP
        addq    $96, SP
        ret
dfs_pc523:
        movq    R10, AX
        pcdata  $1, $1
        call    runtime.panicIndex(SB)
dfs_pc531:
        movq    SI, AX
        call    runtime.panicIndex(SB)
dfs_pc539:
        movq    CX, AX
        movq    BX, CX
        call    runtime.panicIndex(SB)
dfs_pc550:
        movl    $1, AX
        movq    R14, CX
        call    runtime.panicIndex(SB)
dfs_pc563:
        xorl    AX, AX
        movq    R14, CX
        call    runtime.panicIndex(SB)
dfs_pc573:
        movq    R13, CX
        call    runtime.panicIndex(SB)
dfs_pc581:
        movq    R10, AX
        call    runtime.panicIndex(SB)
dfs_pc589:
        movq    SI, AX
        call    runtime.panicIndex(SB)
dfs_pc597:
        call    runtime.panicIndex(SB)
        xchgl   AX, AX
        nop
        pcdata  $1, $-1
        pcdata  $0, $-2
        nop
dfs_pc608:
        call    runtime.morestack_noctxt(SB)
        pcdata  $0, $-1
        jmp     dfs_pc0
main_pc0:
        text    "".main(SB), ABIInternal, $168-0
        movq    (TLS), CX
        leaq    -40(SP), AX
        cmpq    AX, 16(CX)
        pcdata  $0, $-2
        jls     main_pc366
        pcdata  $0, $-1
        subq    $168, SP
        movq    BP, 160(SP)
        leaq    160(SP), BP
        funcdata        $0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        funcdata        $1, gclocals·87471ff47f1e0f13c6fee0c186afcd29(SB)
        funcdata        $3, "".main.stkobj(SB)
        leaq    ""..autotmp_7+80(SP), DI
        xorps   X0, X0
        leaq    -48(DI), DI
        nop
        duffzero        $277
        leaq    go.string."10"(SB), AX
        movq    AX, ""..autotmp_7+80(SP)
        movq    $2, ""..autotmp_7+88(SP)
        leaq    go.string."0001"(SB), AX
        movq    AX, ""..autotmp_7+96(SP)
        movq    $4, ""..autotmp_7+104(SP)
        leaq    go.string."111001"(SB), AX
        movq    AX, ""..autotmp_7+112(SP)
        movq    $6, ""..autotmp_7+120(SP)
        leaq    go.string."1"(SB), AX
        movq    AX, ""..autotmp_7+128(SP)
        movq    $1, ""..autotmp_7+136(SP)
        leaq    go.string."0"(SB), AX
        movq    AX, ""..autotmp_7+144(SP)
        movq    $1, ""..autotmp_7+152(SP)
        leaq    ""..autotmp_7+80(SP), AX
        movq    AX, (SP)
        movq    $5, 8(SP)
        movq    $5, 16(SP)
        movq    $5, 24(SP)
        movq    $3, 32(SP)
        pcdata  $1, $0
        call    "".findMaxForm(SB)
        movq    40(SP), AX
        movq    AX, (SP)
        call    runtime.convT64(SB)
        movq    8(SP), AX
        xorps   X1, X1
        movups  X1, ""..autotmp_16+64(SP)
        leaq    type.int(SB), CX
        movq    CX, ""..autotmp_16+64(SP)
        movq    AX, ""..autotmp_16+72(SP)
        nop
        movq    os.Stdout(SB), AX
        leaq    go.itab.*os.File,io.Writer(SB), CX
        movq    CX, (SP)
        movq    AX, 8(SP)
        leaq    ""..autotmp_16+64(SP), AX
        movq    AX, 16(SP)
        movq    $1, 24(SP)
        movq    $1, 32(SP)
        call    fmt.Fprintln(SB)
        movq    160(SP), BP
        addq    $168, SP
        ret
main_pc366:
        nop
        pcdata  $1, $-1
        pcdata  $0, $-2
        call    runtime.morestack_noctxt(SB)
        pcdata  $0, $-1
        jmp     main_pc0
type_eq_[5]string_pc0:
        text    type..eq.[5]string(SB), DUPOK|ABIInternal, $48-24
        movq    (TLS), CX
        cmpq    SP, 16(CX)
        pcdata  $0, $-2
        jls     type_eq_[5]string_pc202
        pcdata  $0, $-1
        subq    $48, SP
        movq    BP, 40(SP)
        leaq    40(SP), BP
        funcdata        $0, gclocals·d2de89f6cf5e99ce0097843c3071e829(SB)
        funcdata        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        movq    "".p+56(SP), AX
        movq    "".q+64(SP), CX
        xorl    DX, DX
        jmp     type_eq_[5]string_pc51
type_eq_[5]string_pc47:
        leaq    1(BX), DX
type_eq_[5]string_pc51:
        cmpq    DX, $5
        jge     type_eq_[5]string_pc94
        movq    DX, BX
        shlq    $4, DX
        movq    8(CX)(DX*1), SI
        movq    8(AX)(DX*1), DX
        cmpq    SI, DX
        jeq     type_eq_[5]string_pc47
        movb    $0, "".r+72(SP)
        movq    40(SP), BP
        addq    $48, SP
        ret
type_eq_[5]string_pc94:
        xorl    DX, DX
        jmp     type_eq_[5]string_pc117
type_eq_[5]string_pc98:
        movq    ""..autotmp_10+32(SP), BX
        leaq    1(BX), DX
        movq    "".p+56(SP), AX
        movq    "".q+64(SP), CX
type_eq_[5]string_pc117:
        cmpq    DX, $5
        jge     type_eq_[5]string_pc187
        movq    DX, ""..autotmp_10+32(SP)
        shlq    $4, DX
        movq    (CX)(DX*1), SI
        movq    (AX)(DX*1), DI
        movq    8(AX)(DX*1), DX
        movq    DI, (SP)
        movq    SI, 8(SP)
        movq    DX, 16(SP)
        pcdata  $1, $0
        nop
        call    runtime.memequal(SB)
        cmpb    24(SP), $0
        jne     type_eq_[5]string_pc98
        movb    $0, "".r+72(SP)
        movq    40(SP), BP
        addq    $48, SP
        ret
type_eq_[5]string_pc187:
        movb    $1, "".r+72(SP)
        movq    40(SP), BP
        addq    $48, SP
        ret
type_eq_[5]string_pc202:
        nop
        pcdata  $1, $-1
        pcdata  $0, $-2
        call    runtime.morestack_noctxt(SB)
        pcdata  $0, $-1
        jmp     type_eq_[5]string_pc0