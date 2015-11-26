CC TESTE      ; CREATE CLASS
   CD A:4     ; VARIABLE v1
   CD B:4     ; VARIABLE v2
   MREF NEW   ; CREATE A REFERENCE TO A METHOD NEW
   MREF SUM   ; CREATE A REFERENCE TO A METHOD SUM
ENDC TESTE

MC TESTE.NEW
   MOV 20, SELF.A ; A := 20
   MOV 10, SELF.B ; B := 10
   RET

MC TESTE.SUM
   ADD SELF.A:SELF.B ; ADD THE VALUE '20' WITH '10'
   RET

PROGRAM START
   COR  I1:TESTE ;CREATE A OBJECT REFERENCE
   COI  I1.NEW   ;CREATE A OBJECT INSTANCE
   CALL I1.SUM   ;CALL 'SUM' METHOD FROM OBJECT INSTANCE
   RET