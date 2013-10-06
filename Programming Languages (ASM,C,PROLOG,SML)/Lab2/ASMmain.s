 AREA  PYTH, CODE
; Main
__main PROC
       EXPORT  __main    


;LAB2

;Bubble sort O(n^2) time

;int AMAX = 100
;int a[AMAX];
;int i;
;int j;
;int t;

;for(i=AMAX-1;i>=0;i--)
; for(j=0;j<i;j++)
;  if(a[j]>a[j+1])
;  {  t = a[j];
;    a[j] = a[j+1];
;     a[j+1] = t;
;  } 

AMAX EQU 5
TEST EQU 0
a RN R2
i RN R3
j RN R4
t RN R5
q RN R6
				
				LDR a,=AMAX
				LDR j,=TEST

OUTERLOOP		SUB i,a,#1			;;first for loop ? assign the variable i with AMAX decremented by 1
				CMP i,#0			;;if i is less than or equal to 0 then 
				BLE ENDL			;;branch to ENDL which ends the program else	
				SUB i,i,#1			;;decrement i by 1
				B INNERLOOP

INNERLOOP						;;assign variable j 0
				CMP j,i			;;compare j with i ,if it is greater than - the program will terminate
				BGE ENDL			
				ADD j,j,#1		;;increment j
				B IFCONDITION

IFCONDITION			
				LDR a,[j]				;;load contents of [j] into a
				ADD q,j,#1				;;load value [j+1] after a [j]
				;LDR q,[k]				;;load contents of k into a
				CMP a,q					;;compare the content
				BGE SWAP				;;if value is greater then branch to swap

SWAP			LDR t,[a]				;;load contents of [j] into T works
				LDR a,[q]				;;store content of [a] into [j + 1] 
				LDR q,[t]				;;store content of t into a[j+1]
				B OUTERLOOP

; Assembly Code Below Here
; Assembly Code Above Here
ENDL	B ENDL
		ENDP
		END