 		 AREA  PYTH, CODE
; Main
__main PROC
       EXPORT  __main         

;A

;calculate ax2+bx+c:

;int x,a,b,c,y;
;a = 1;
;b = 2;
;c = 1;
;x = 3;
;y = a*x*x+b*x+c;


a RN 1
b RN 2
c RN 3
x RN 4
y RN 5
		MOV a,#1
		MOV b,#2
		MOV c,#3
		MOV x,#3
		MOV y,#0

		MUL a,a,x
		MUL a,a,x
		MUL b,b,x
		ADD b,b,c
		ADD y,a,b
		

; Assembly Code Below Here
; Assembly Code Above Here
ENDL	B ENDL
		ENDP
		END
;B

n RN 1
d RN 2
q RN 3

		MOV n,#24
		MOV d,#7
		MOV q,#0

LOOP 	CMP n,d
		BLT ENDL
		ADD q,#1
		SUB n,d
		B LOOP
	


; Assembly Code Below Here
; Assembly Code Above Here
ENDL	B ENDL
		ENDP
		END
		
		
