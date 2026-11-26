// Roll no: 2501739418, so K = 18.
// Box: row 18, 20 rows high, 48 pixels wide (3 screen words).
// This version uses an inner loop for the three words in each row.

(LOOP)
    @KBD
    D=M
    @KEY_DOWN
    D;JNE

    @COLOR
    M=0
    @DRAW
    0;JMP

(KEY_DOWN)
    @COLOR
    M=-1

(DRAW)
    // Each screen row contains 32 words; row 18 begins at offset 576.
    @SCREEN
    D=A
    @576
    D=D+A
    @PTR
    M=D

    @20
    D=A
    @ROWS
    M=D

(ROW)
    @3
    D=A
    @WORDS
    M=D

(WORD)
    @COLOR
    D=M
    @PTR
    A=M
    M=D

    @PTR
    M=M+1
    @WORDS
    M=M-1
    D=M
    @WORD
    D;JGT

    // Three words were written; skip the remaining 29 words in this row.
    @29
    D=A
    @PTR
    M=D+M

    @ROWS
    M=M-1
    D=M
    @ROW
    D;JGT

    @LOOP
    0;JMP
