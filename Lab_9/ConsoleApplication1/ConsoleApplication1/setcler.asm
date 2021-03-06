.386
.model FLAT, C

PUBLIC SETCLER

.CODE
SETCLER:
	PUSH EBP
	MOV  EBP, ESP
	ADD  EBP, 8

	MOV  ECX, [EBP + 8]     ; P
	MOV  EAX, [EBP + 4]		; N

	XOR  EDX, EDX

	MOV  EBX, 32
	DIV  EBX

	MOV  EBX, [EBP]			; X

	CMP  EAX, 0
	JE      M
	ADD  EBX, 4

	M:
		CMP  ECX, 0
		JE     ZERO
		JMP  ONE

		ZERO:
			BTR  [EBX], EDX
			JMP  EXIT
		ONE:
			BTS  [EBX], EDX

EXIT:
	POP  EBP
	RET
END
