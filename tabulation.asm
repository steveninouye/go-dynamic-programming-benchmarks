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
        text    "".findMaxForm(SB), ABIInternal, $96-48
        movq    (TLS), CX
        cmpq    SP, 16(CX)
        pcdata  $0, $-2
        jls     findMaxForm_pc615
        pcdata  $0, $-1
        subq    $96, SP
        movq    BP, 88(SP)
        leaq    88(SP), BP
        funcdata        $0, gclocals·c7c4fc7b12f6707ea74acf7400192967(SB)
        funcdata        $1, gclocals·663f8c6bfa83aa777198789ce63d9ab4(SB)
        leaq    type.[]int(SB), AX
        movq    AX, (SP)
        movq    "".m+128(SP), AX
        leaq    1(AX), CX
        movq    CX, "".dp.cap+64(SP)
        movq    CX, 8(SP)
        movq    CX, 16(SP)
        pcdata  $1, $0
        call    runtime.makeslice(SB)
        movq    24(SP), AX
        movq    AX, ""..autotmp_26+80(SP)
        xorl    CX, CX
        jmp     findMaxForm_pc97
findMaxForm_pc90:
        leaq    1(AX), CX
        movq    SI, AX
findMaxForm_pc97:
        movq    "".dp.cap+64(SP), DX
        cmpq    DX, CX
        jle     findMaxForm_pc215
        movq    CX, "".i+48(SP)
        leaq    type.int(SB), AX
        movq    AX, (SP)
        movq    "".n+136(SP), CX
        leaq    1(CX), DX
        movq    DX, ""..autotmp_27+72(SP)
        movq    DX, 8(SP)
        movq    DX, 16(SP)
        pcdata  $1, $1
        call    runtime.makeslice(SB)
        movq    "".i+48(SP), AX
        leaq    (AX)(AX*2), CX
        movq    24(SP), DX
        movq    ""..autotmp_27+72(SP), BX
        movq    ""..autotmp_26+80(SP), SI
        movq    BX, 8(SI)(CX*8)
        movq    BX, 16(SI)(CX*8)
        leaq    (SI)(CX*8), DI
        pcdata  $0, $-2
        cmpl    runtime.writeBarrier(SB), $0
        jne     findMaxForm_pc208
        movq    DX, (SI)(CX*8)
        jmp     findMaxForm_pc90
findMaxForm_pc208:
        call    runtime.gcWriteBarrierDX(SB)
        jmp     findMaxForm_pc90
findMaxForm_pc215:
        pcdata  $0, $-1
        xorl    CX, CX
        jmp     findMaxForm_pc369
findMaxForm_pc222:
        leaq    -1(R12), SI
        movq    R10, DI
findMaxForm_pc230:
        cmpq    CX, SI
        jgt     findMaxForm_pc337
        movq    DI, R10
        subq    AX, DI
        cmpq    BX, DI
        jls     findMaxForm_pc603
        leaq    (DI)(DI*2), DI
        movq    8(DX)(DI*8), R11
        movq    (DX)(DI*8), DI
        movq    SI, R12
        subq    CX, SI
        cmpq    SI, R11
        jcc     findMaxForm_pc592
        movq    (DI)(SI*8), SI
        nop
        cmpq    BX, R10
        jls     findMaxForm_pc581
        leaq    (R10)(R10*2), DI
        movq    (DX)(DI*8), R11
        movq    8(DX)(DI*8), DI
        cmpq    R12, DI
        jcc     findMaxForm_pc566
        incq    SI
        movq    (R11)(R12*8), DI
        cmpq    DI, SI
        jge     findMaxForm_pc222
        movq    SI, (R11)(R12*8)
        jmp     findMaxForm_pc222
findMaxForm_pc337:
        decq    DI
        movq    R9, SI
findMaxForm_pc343:
        cmpq    AX, DI
        jgt     findMaxForm_pc354
        movq    SI, R9
        nop
        jmp     findMaxForm_pc230
findMaxForm_pc354:
        movq    "".i+56(SP), DI
        leaq    1(DI), CX
        movq    DX, AX
        movq    BX, DX
findMaxForm_pc369:
        movq    "".strs+112(SP), BX
        cmpq    CX, BX
        jge     findMaxForm_pc489
        movq    CX, "".i+56(SP)
        shlq    $4, CX
        movq    "".strs+104(SP), DX
        movq    8(DX)(CX*1), BX
        movq    BX, "".str.len+40(SP)
        movq    (DX)(CX*1), CX
        movq    CX, (SP)
        movq    BX, 8(SP)
        leaq    go.string."0"(SB), CX
        movq    CX, 16(SP)
        movq    $1, 24(SP)
        call    strings.Count(SB)
        movq    32(SP), AX
        movq    "".str.len+40(SP), CX
        subq    AX, CX
        movq    ""..autotmp_26+80(SP), DX
        movq    "".dp.cap+64(SP), BX
        movq    "".n+136(SP), SI
        movq    "".m+128(SP), DI
        movq    DI, R8
        jmp     findMaxForm_pc343
findMaxForm_pc489:
        movq    "".m+128(SP), BX
        cmpq    BX, DX
        jcc     findMaxForm_pc555
        leaq    (BX)(BX*2), DX
        movq    8(AX)(DX*8), CX
        movq    (AX)(DX*8), DX
        movq    "".n+136(SP), AX
        cmpq    AX, CX
        jcc     findMaxForm_pc550
        movq    (DX)(AX*8), AX
        movq    AX, "".~r3+144(SP)
        movq    88(SP), BP
        addq    $96, SP
        ret
findMaxForm_pc550:
        pcdata  $1, $2
        call    runtime.panicIndex(SB)
findMaxForm_pc555:
        movq    BX, AX
        movq    DX, CX
        call    runtime.panicIndex(SB)
findMaxForm_pc566:
        movq    R12, AX
        movq    DI, CX
        nop
        call    runtime.panicIndex(SB)
findMaxForm_pc581:
        movq    R10, AX
        movq    BX, CX
        call    runtime.panicIndex(SB)
findMaxForm_pc592:
        movq    SI, AX
        movq    R11, CX
        call    runtime.panicIndex(SB)
findMaxForm_pc603:
        movq    DI, AX
        movq    BX, CX
        call    runtime.panicIndex(SB)
        xchgl   AX, AX
findMaxForm_pc615:
        nop
        pcdata  $1, $-1
        pcdata  $0, $-2
        call    runtime.morestack_noctxt(SB)
        pcdata  $0, $-1
        jmp     findMaxForm_pc0
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