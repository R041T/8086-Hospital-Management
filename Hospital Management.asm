.MODEL LARGE
.STACK 1000H
.DATA


;; MENU DETAILS

M1 DB 10,13,10,13,'                ****Covid Management System**********$',10,13
M2 DB 10,13,10,13, 'What details would you like to modify? Enter option (1-4)$'                                         
M3 DB 10,13,10,13,'1. Patient details $'
M4 DB 10,13,10,13,'2. Symptom details $'
M5 DB 10,13,10,13,'3. Admission details $'
MMED DB 10,13,10,13,'4. Buy Medicines $'


;; PATIENT DETAILS

M6 DB 10,13,10,13,'1. Enter Name of Patient $'
M7 DB 10,13,10,13,'2. Enter Age of Patient $'
M8 DB 10,13,10,13,'2. Enter Sex of Patient $'
M9 DB 10,13,10,13,'3. Enter PAN/Aadhaar no. of Patient $'
M10 DB 10,13,10,13,'4. Enter Date ofbirth of Patient $' 
M11 DB 10,13,10,13,'5. Enter City of residence Patient $'


SEJ DB 10,13, ' $'       ; New lines
SEJT DB 10,13,10,13, ' $'     ; Two lines

            
NAM db 10,?,'$' 
AGE db 10,? 
SEX db 10,?
IDNO db 10,? 
DOB db 10,? 
CITY db 10,?  


;; SYMPTOM DETAILS


M12 DB 10,13,10,13,'1. Is the Patient critical? $'
M13 DB 10,13,10,13,'2. Does the patient have Fever? $'
M14 DB 10,13,10,13,'2. Does the patient have Dry cough? $'
M15 DB 10,13,10,13,'5. Does the patient have breathing problem? $'
M16 DB 10,13,10,13,'3. Does the patient have Chest pain? $'
M17 DB 10,13,10,13,'4. Does the patient have Loss of taste? $' 
M18 DB 10,13,10,13,'5. Does the patient have diarrhoea? $'
                                                           

CRITICAL db 0h
FEVER db 0h
COUGH db 0h
BREATH db 0h
CHEST db 0h
TASTE db 0h
DIA db 0h    


;;  ADMISSION DETAILS

M19 DB 10,13,10,13,'1. Enter Patient ID $'
M20 DB 10,13,10,13,'2. Enter Doctor ID $'
M21 DB 10,13,10,13,'3. Enter Room Type $'
M22 DB 10,13,10,13,'4. Enter Date of Admission $'
M23 DB 10,13,10,13,'5. Enter number of days admitted $'
M24 DB 10,13,10,13,'6. Enter Test report (+ve or -ve) $'  

PID db 10,? 
DID db 10,?
;RT db 10,?
RT db 0h
;ROOMCOST dw 0h
ROOMCOST dw 0h
DOA db 10,?
;NUMDAYS dw 10,?
NUMDAYS db 0h
TR db 10,?


;; Buy medicines

M25 DB 10,13,10,13,'Select Type of Medicine$'

M26 DB 10,13,10,13,'1. Mask $'
M27 DB 10,13,10,13,'2. Medicines for Fever $'
M28 DB 10,13,10,13,'3. Medicines for Dry Cough $'
M29 DB 10,13,10,13,'4. Medicines for breathing problem $'
M30 DB 10,13,10,13,'5. Medicines for Diabetics $'
M31 DB 10,13,10,13,'6. Medicines for High BP$' 
M32 DB 10,13,10,13,'7. Medicines for diarrhoea? $'
                                                           

;MEDCRIT db 0h
;MEDFEVER db 0h
;MEDCOUGH db 0h
;MEDBREATH db 0h
;MEDSUGAR db 0h
;MEDBP db 0h
;MEDDIA db 0h  

MEDCOST dw 0h
TOTCOST dw 0h
;TESTS dw 10000

;; MASK 

M33 DB 10,13,10,13,'Enter Quantity of mask $'
QUANTITY DB 0h
                                                           

;; FEVER MEDICINES

M34 DB 10,13,10,13,'Select Medicine for Fever$'

M35 DB 10,13,10,13,'1. Medicine 1 $'
M36 DB 10,13,10,13,'2. Medicine 2 $'
M37 DB 10,13,10,13,'3. Medicine 3 $'
M38 DB 10,13,10,13,'4. Medicine 4 $'
M39 DB 10,13,10,13,'5. Medicine 5 $'
M40 DB 10,13,10,13,'6. Medicine 6 $' 
M41 DB 10,13,10,13,'7. Medicine 7 $'


;; COUGH MEDICINES

M42 DB 10,13,10,13,'Select Medicine for Cough$'

M43 DB 10,13,10,13,'1. Medicine 1 $'
M44 DB 10,13,10,13,'2. Medicine 2 $'
M45 DB 10,13,10,13,'3. Medicine 3 $'
M46 DB 10,13,10,13,'4. Medicine 4 $'
M47 DB 10,13,10,13,'5. Medicine 5 $'
M48 DB 10,13,10,13,'6. Medicine 6 $' 
M49 DB 10,13,10,13,'7. Medicine 7 $' 

;; BREATHING PROBLEM MEDICINES

M50 DB 10,13,10,13,'Select Medicine for Breathing Problem $'

M51 DB 10,13,10,13,'1. Medicine 1 $'
M52 DB 10,13,10,13,'2. Medicine 2 $'
M53 DB 10,13,10,13,'3. Medicine 3 $'
M54 DB 10,13,10,13,'4. Medicine 4 $'
M55 DB 10,13,10,13,'5. Medicine 5 $'
M56 DB 10,13,10,13,'6. Medicine 6 $' 
M57 DB 10,13,10,13,'7. Medicine 7 $'

;; DIABETIC PROBLEM MEDICINES

M58 DB 10,13,10,13,'Select Medicine for Diabetics $'

M59 DB 10,13,10,13,'1. Medicine 1 $'
M60 DB 10,13,10,13,'2. Medicine 2 $'
M61 DB 10,13,10,13,'3. Medicine 3 $'
M62 DB 10,13,10,13,'4. Medicine 4 $'
M63 DB 10,13,10,13,'5. Medicine 5 $'
M64 DB 10,13,10,13,'6. Medicine 6 $' 
M65 DB 10,13,10,13,'7. Medicine 7 $'

;; HIGH BP PROBLEM MEDICINES

M66 DB 10,13,10,13,'Select Medicine for HIGH BP $'

M67 DB 10,13,10,13,'1. Medicine 1 $'
M68 DB 10,13,10,13,'2. Medicine 2 $'
M69 DB 10,13,10,13,'3. Medicine 3 $'
M70 DB 10,13,10,13,'4. Medicine 4 $'
M71 DB 10,13,10,13,'5. Medicine 5 $'
M72 DB 10,13,10,13,'6. Medicine 6 $' 
M73 DB 10,13,10,13,'7. Medicine 7 $'

;; DIARRHOEA MEDICINES

M74 DB 10,13,10,13,'Select Medicine for Diarrhoea $'

M75 DB 10,13,10,13,'1. Medicine 1 $'
M76 DB 10,13,10,13,'2. Medicine 2 $'
M77 DB 10,13,10,13,'3. Medicine 3 $'
M78 DB 10,13,10,13,'4. Medicine 4 $'
M79 DB 10,13,10,13,'5. Medicine 5 $'
M80 DB 10,13,10,13,'6. Medicine 6 $' 
M81 DB 10,13,10,13,'7. Medicine 7 $'


;; QUANTITY OF MEDICINE

M82 DB 10,13,10,13,'Enter Quantity of Medicine $'

;; GENERATE BILL

M83 DB 10,13,10,13,'5. Generate Bill $'
M84 DB 10,13,10,13,'Your bill amount is $'
M85 DB 10,13,10,13,'Name is $'
                         
.CODE
MAIN PROC
         
MOV AX,@DATA
MOV DS,AX

    STRT:	   
	    lea dx,M1
	    mov ah,9
	    int 21h    

		
        lea dx, M2
		mov ah, 9
		int 21h       
		
		lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
		lea dx, M3
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M4
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M5
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, MMED
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M83
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h  
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je PATIENT
        
        cmp bh,2
        je SYMPTOM
        
        cmp bh,3
        je ADMISSION
        
        cmp bh,4
        je MEDICINES
        
        cmp bh,5
        je GENBILL
        
        
      PATIENT:
           
        lea dx, M6
		mov ah, 9
		int 21h 
		
		lea dx, NAM
		mov ah, 0ah
		int 21h
		
		lea dx, M7
		mov ah, 9
		int 21h 
		
		lea dx, AGE
		mov ah, 0ah
		int 21h
		
		
		lea dx, M8
		mov ah, 9
		int 21h 
		
		lea dx, SEX
		mov ah, 0ah
		int 21h
		
		lea dx, M9
		mov ah, 9
		int 21h 
		
		lea dx, IDNO
		mov ah, 0ah
		int 21h
		
		lea dx, M10
		mov ah, 9
		int 21h 
		
		lea dx, DOB
		mov ah, 0ah
		int 21h
		
		lea dx, M11
		mov ah, 9
		int 21h 
		
		lea dx, CITY
		mov ah, 0ah
		int 21h
		
		lea dx, SEJT
		mov ah, 9
		int 21h
		
		je STRT
		
		
	  SYMPTOM:
	  
        lea dx, M12
		mov ah, 9
		int 21h 
		
		mov ah,1
        int 21h
        mov CRITICAL[1],al
		
		lea dx, M13
		mov ah, 9
		int 21h  
		
		mov ah,1
        int 21h
        mov FEVER[1],al
		
		lea dx, M14
		mov ah, 9
		int 21h 
		
		mov ah,1
        int 21h
        mov COUGH[1],al
		
		lea dx, M15
		mov ah, 9
		int 21h 
		
		mov ah,1
        int 21h
        mov BREATH[1],al
		
		lea dx, M16
		mov ah, 9
		int 21h 
		
		mov ah,1
        int 21h
        mov CHEST[1],al
		
		lea dx, M17
		mov ah, 9
		int 21h  
		
		mov ah,1
        int 21h
        mov TASTE[1],al
		
		lea dx, M18
		mov ah, 9
		int 21h  
		
		mov ah,1
        int 21h
        mov DIA[1],al
		
		lea dx, SEJT
		mov ah, 9
		int 21h
		
		je STRT
		
		
	  ADMISSION:
	    
	    lea dx, M19
		mov ah, 9
		int 21h 
		
		lea dx, PID
		mov ah, 0ah
		int 21h
		
		lea dx, M20
		mov ah, 9
		int 21h  
		
		lea dx, DID
		mov ah, 0ah
		int 21h
		
		lea dx, M21
		mov ah, 9
		int 21h 
		
		;lea dx, RT
		;mov ah, 0ah
		mov ax,0
		mov ah,1
		int 21h
		mov RT,al
		
		lea dx, M22
		mov ah, 9
		int 21h 
		
		lea dx, DOA
		mov ah, 0ah
		int 21h
		
		lea dx, M23
		mov ah, 9
		int 21h 
		
		;lea dx, NUMDAYS
		;mov ah, 0ah
		mov ax,0
		mov ah,1
		int 21h
		mov NUMDAYS,al
		
		lea dx, M24
		mov ah, 9
		int 21h 
		
		lea dx, TR
		mov ah, 0ah
		int 21h
		
		lea dx, SEJT
		mov ah, 9
		int 21h
        
        je STRT
        
        
      MEDICINES:
      
        lea dx,M25
	    mov ah,9
	    int 21h    
    
        lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
        lea dx, M26
		mov ah, 9
		int 21h       
		
		
		lea dx, M27
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M28
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M29
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M30
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, M31
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M32
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h    
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je MASK
        
        cmp bh,2
        je FEVERMED
        
        cmp bh,3
        je COUGHMED 
        
         cmp bh,4
        je BREATHMED
        
        cmp bh,5
        je DIABETICMED
        
        cmp bh,6
        je BPMED
        
        cmp bh,7
        je DIAMED
        
        
      MASK:
      
        lea dx, M33
		mov ah, 9
		int 21h
		
		mov bx,0
		mov ah,1
        int 21h
        mov bl,al
        mov ax,0
        sub bl,48
        mov ax,bx
        mov bx,30
        MUL bx
        add TOTCOST,ax 
        
        jmp STRT 
		
	  FEVERMED:
	  
	    lea dx,M34
	    mov ah,9
	    int 21h    
    
        lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
        lea dx, M35
		mov ah, 9
		int 21h       
		
		
		lea dx, M36
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M37
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M38
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M39
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, M40
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M41
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je CALCFEV1
        
        cmp bh,2
        je CALCFEV2
        
        cmp bh,3
        je CALCFEV3
        
        cmp bh,4
        je CALCFEV4
        
        cmp bh,5
        je CALCFEV5
        
        cmp bh,6
        je CALCFEV6
        
        cmp bh,7
        je CALCFEV7
        
        ;jmp QUANTITYMED
      
      CALCFEV1:
      
        mov bx,30
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
       
      CALCFEV2:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
        
      CALCFEV3:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      
      CALCFEV4:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALCFEV5:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALCFEV6:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALCFEV7:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT           
        
      COUGHMED:
	  
	    lea dx,M42
	    mov ah,9
	    int 21h    
    
        lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
        lea dx, M43
		mov ah, 9
		int 21h       
		
		
		lea dx, M44
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M45
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M46
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M47
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, M48
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M49
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je CALCOUGH1
        
        cmp bh,2
        je CALCOUGH2
        
        cmp bh,3
        je CALCOUGH3
        
        cmp bh,4
        je CALCOUGH4
        
        cmp bh,5
        je CALCOUGH5
        
        cmp bh,6
        je CALCOUGH6
        
        cmp bh,7
        je CALCOUGH7
        
      CALCOUGH1:
      
        mov bx,30
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
       
      CALCOUGH2:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
        
      CALCOUGH3:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      
      CALCOUGH4:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALCOUGH5:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALCOUGH6:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALCOUGH7:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT   
      
      BREATHMED:
	  
	    lea dx,M50
	    mov ah,9
	    int 21h    
    
        lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
        lea dx, M51
		mov ah, 9
		int 21h       
		
		
		lea dx, M52
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M53
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M54
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M55
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, M56
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M57
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je CALBREATH1
        
        cmp bh,2
        je CALBREATH2
        
        cmp bh,3
        je CALBREATH3
        
        cmp bh,4
        je CALBREATH4
        
        cmp bh,5
        je CALBREATH5
        
        cmp bh,6
        je CALBREATH6
        
        cmp bh,7
        je CALBREATH7
        
      CALBREATH1:
      
        mov bx,30
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
       
      CALBREATH2:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
        
      CALBREATH3:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      
      CALBREATH4:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALBREATH5:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALBREATH6:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALBREATH7:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
        
      DIABETICMED:
	  
	    lea dx,M58
	    mov ah,9
	    int 21h    
    
        lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
        lea dx, M59
		mov ah, 9
		int 21h       
		
		
		lea dx, M60
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M61
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M62
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M63
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, M64
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M65
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je CALDIAB1
        
        cmp bh,2
        je CALDIAB2
        
        cmp bh,3
        je CALDIAB3
        
        cmp bh,4
        je CALDIAB4
        
        cmp bh,5
        je CALDIAB5
        
        cmp bh,6
        je CALDIAB6
        
        cmp bh,7
        je CALDIAB7
        
      CALDIAB1:
      
        mov bx,30
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
       
      CALDIAB2:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
        
      CALDIAB3:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      
      CALDIAB4:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALDIAB5:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALDIAB6:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALDIAB7:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      BPMED:
	  
	    lea dx,M66
	    mov ah,9
	    int 21h    
    
        lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
        lea dx, M67
		mov ah, 9
		int 21h       
		
		
		lea dx, M68
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M69
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M70
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M71
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, M72
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M73
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je CALBP1
        
        cmp bh,2
        je CALBP2
        
        cmp bh,3
        je CALBP3
        
        cmp bh,4
        je CALBP4
        
        cmp bh,5
        je CALBP5
        
        cmp bh,6
        je CALBP6
        
        cmp bh,7
        je CALBP7
        
      CALBP1:
      
        mov bx,30
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
       
      CALBP2:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
        
      CALBP3:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      
      CALBP4:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALBP5:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALBP6:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALBP7:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT 
        
      DIAMED:
	  
	    lea dx,M74
	    mov ah,9
	    int 21h    
    
        lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h 
		
        lea dx, M75
		mov ah, 9
		int 21h       
		
		
		lea dx, M76
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        
        lea dx, M77
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M78
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M79
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h 
        
        lea dx, M80
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        lea dx, M81
		mov ah, 9
		int 21h
		
		lea dx,SEJ ;Two NEWLINE
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
    
        cmp bh,1
        je CALDIA1
        
        cmp bh,2
        je CALDIA2
        
        cmp bh,3
        je CALDIA3
        
        cmp bh,4
        je CALDIA4
        
        cmp bh,5
        je CALDIA5
        
        cmp bh,6
        je CALDIA6
        
        cmp bh,7
        je CALDIA7
        
      CALDIA1:
      
        mov bx,30
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
       
      CALDIA2:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
        
      CALDIA3:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      
      CALDIA4:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALDIA5:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALDIA6:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      CALDIA7:
      
        mov bx,40
        mov MEDCOST,bx
      
        lea dx, M82
	    mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov bl,al
        sub bl,48
        mov ax,MEDCOST
        mul bx
        add TOTCOST,ax   
        
        jmp STRT
        
      QUANTITYMED:
      
        lea dx, M82
		mov ah, 9
		int 21h
		
		mov ah,1
        int 21h
        mov QUANTITY,al
        mov ax,MEDCOST
        mul bx
        mov TOTCOST,bx   
        
        jmp STRT
      
      GENBILL:
        
        lea dx, M84
		mov ah, 9
		int 21h
		
		lea dx,SEJT ;Two NEWLINE
        mov ah,9
        int 21h
        
        CALL ROOMCALC
        
        mov ax,TOTCOST
        add ax,ROOMCOST
        mov TOTCOST,ax
        
        CALL AGECALC
        
        mov ax,TOTCOST
        ;print the value  
        CALL PRINT
        
        jmp EXIT
        

	  EXIT:
    
       MOV AH,4CH
       INT 21H
       MAIN ENDP
		
	   PRINT PROC            
      
    ;initilize count 
    mov cx,0 
    mov dx,0 
    label1: 
        ; if ax is zero 
        cmp ax,0 
        je print1       
          
        ;initilize bx to 10 
        mov bx,10         
          
        ; extract the last digit 
        div bx                   
          
        ;push it in the stack 
        push dx               
          
        ;increment the count 
        inc cx               
          
        ;set dx to 0  
        xor dx,dx 
        jmp label1 
    print1: 
        ;check if count  
        ;is greater than zero 
        cmp cx,0 
        je exitprt
          
        ;pop the top of stack 
        pop dx 
          
        ;add 48 so that it  
        ;represents the ASCII 
        ;value of digits 
        add dx,48 
          
        ;interuppt to print a 
        ;character 
        mov ah,02h 
        int 21h 
          
        ;decrease the count 
        dec cx 
        jmp print1 
        exitprt: 
        ret 
        PRINT ENDP
	   
	 
	 ROOMCALC PROC            
      
    ;initilize count 
    mov cx,0 
    mov dx,0
    mov bx,0 
    mainroom: 
        mov bh,RT
        sub bh,48
        
        cmp bh,1  
        je room1
        
        cmp bh,2
        je room2
        
        cmp bh,3
        je room3
         
       
    room1:
    
        mov ax,300
        mov bx,0
        mov bl,NUMDAYS
        sub bl,48
        
        mul bx
        mov ROOMCOST,ax
        jmp exitroom
        
    room2:
    
        mov ax,400
        mov bx,0
        mov bl,NUMDAYS
        sub bl,48
        
        mul bx
        mov ROOMCOST,ax
        jmp exitroom
        
    room3:
    
        mov ax,500
        mov bx,0
        mov bl,NUMDAYS
        sub bl,48
        
        mul bx
        mov ROOMCOST,ax
        jmp exitroom 
        
     
     exitroom: 
        ret 
     ROOMCALC ENDP
	 
	 AGECALC PROC            
      
    ;initilize count 
    mov cx,0 
    mov dx,0
    mov bx,0 
    mainage:
         mov bl,AGE
         sub bl,48
         cmp bl,60
         jge greater
         
    greater:
        
        mov bx,ROOMCOST
        SUB TOTCOST,bx
     
         
        
     
     exitage: 
        ret 
     AGECALC ENDP
		
		
    
    
	
         
END MAIN    