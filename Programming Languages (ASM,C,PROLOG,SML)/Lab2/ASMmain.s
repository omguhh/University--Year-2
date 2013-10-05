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

AMAX RN 1
a RN 2
i RN 3
j RN 4
t RN 5
k RN 6
q RN 7


				MOV AMAX,#100
				MOV a,AMAX
				MOV j,#0
				
OUTERLOOP		SUB i,AMAX,#1		;;first for loop ? assign the variable i with AMAX decremented by 1
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
				ADD k , j , #1			;;load value [j+1] after a [j]
				LDR q,[k]				;;load contents of k into a
				CMP a,q					;;compare the content
				BGE SWAP				;;if value is greater then branch to swap

SWAP			STR t,[a]				;;store the lower value in t 
				STR a,[k]
				STR q,[t]
				B OUTERLOOP

; Assembly Code Below Here
; Assembly Code Above Here
ENDL	B ENDL
		ENDP
		END
