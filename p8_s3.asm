IDEAL
STUDENT_NAME equ "Niv bracha"


;---------------------------------------------
; 
; Solution for Chapter 8 Work
;  
; This is personal task - Do not share it with others !!! 
;
;----------------------------------------------- 
 
MODEL small


public  aTom1
public  ZeroToNine2
public  ZeroToNine3
public  Array4 
public  BufferFromEx5
public  BufferToEx5
public  BufferFrom6 
public  BufferTo6
public  BufferTo6Len
public  MyLine7
public  Line7Length
public  MyWords7 
public  MyWords7Length 
public  MyQ8
public  MySum8  
public  MySet9  
public  Count1
public  Count2
public  Count3
public  Num10  
public  BinaryStr10  
public  EndGates11 
public  Gate78 
public  Num12A 
public  Num12B 
public  StrNum13 
public  WordNum13 
public  Num14Word 
public  StrWord14 


public  ShowAxDecimal
public  ex1      
public  ex2      
public  ex3      
public  ex4      
public  ex5      
public  ex6      
public  ex7a     
public  ex7b     
public  ex8      
public  ex9      
public  ex10     
public  ex11     
public  ex12     
public  ex13     
public  ex14c 

stack 256
DATASEG

		;exercise 1
		aTom1 db 13 dup(?),"$"

		;exercise 2
		 ZeroToNine2 db 10 dup(?),"$"

		;exercise 3
		 ZeroToNine3 db 10 dup(?),"$"
		
		;exercise 4
		 Array4 db 100 dup(?),"$"
		
		;exercise 5
		 BufferFromEx5 db 10 dup(31h),"$"
		 BufferToEx5 db 10 dup(?),"$"

		;exercise 6
		  BufferFrom6 db  -10, 5, 8, 20, -3, 15, 2, -7, 25, 12 
                     db 30, -12, 18, 6, -8, 35, 0, 11, -5, 40 
                     db 9, 50, -15, 7, -2, 14, -20, 19, -25, 13 
                    db 22, -30, 17, 4, -35, 10, 28, -40, 21, -6 
                    db 16, -1, 23, -9, 27, -4, 31, -11, 33, -14,"$"
		BufferTo6 db 50 dup(?),"$"
		BufferTo6Len db 0
		
		;exercise 7
		MyLine7 db 11,15,98,20,22,27,17,2,6,9,8,17,13
		Line7Length db ?
		;exercise 7b
		 MyWords7 dw 811,715,980,280,298,272,175,215,624,926,852,874,0DDDDh
		 MyWords7Length db ?

		
		
		;exercise 8
		 MyQ8 db 101, 130, 128, -8, 30, 201, 120, -3, 100, 255, 0
		 MySum8 dw 0
		 
		 
		;exercise 9
		 MySet9 dw 101, 130, 128, -8, 30, 201, 120, -3, 100, 255, 0,0ffffh
		 Count1 db 0
		 Count2 db 0
		 Count3 db 0

		 
		 
		;exercise 10
		Num10 db 15
		BinaryStr10 db 9 dup(?),"$"
		
		
		;exercise 11
		True11 db "both 7&8 are 1 ",'$'
		False11 db "at least one of the bits 7,8 is 0",'$'
		EndGates11 db ?
		Gate78 db ?
		;exercise 12
		Num12A db ?
		num12b db ?
		
		
		;exercise 13
		StrNum13 db "65120!"
		WordNum13 dw ?
		
		
		
		;exercise 14
		Num14Word   dw ?
	 	StrWord14   db ?,?,?,?
		

CODESEG


start:
		mov ax, @data
		mov ds,ax
		
		
	
	
	

		 

		

		;call ex1
	 
		;call ex2
	 
		; call ex3
	 
		;call ex4
	 
		;call ex5
	 
		;call ex6
		 
	 
		;call ex7a
		
		;call ex7b
		
		;call ex8
		
		;call ShowAxDecimal
	
		
		;call ex9
	 
		;call ex10
	 
		;call ex11
	 
		;call ex12
	 
		;call ex13
	 
	 
		mov [Num14Word], 0F70Ch  
 		;call ex14c     ; this will call to ex14b and ex14a
	 
		
		
		
		 ; call TTTTTttttttTTT
	 

exit:
		mov ax, 04C00h
		int 21h

		
	 

		
;------------------------------------------------
;------------------------------------------------
;-- End of Main Program ... Start of Procedures 
;------------------------------------------------
;------------------------------------------------

;================================================
; Description - Stores letters 'a' to 'm' in global variable aTom1
; INPUT: None
; OUTPUT: None
; Register Usage: AX, BX, CX, SI
;================================================
proc ex1
    push ax 
    push bx
    push cx
	push si 
    
    mov si,12
    
loop_start:
    mov al, [aTom1+si]
    mov bl, 'a'        
    add bx, si         
    add al, bl         
    mov [aTom1+si],al
    
    dec si
    cmp si,0
    jge loop_start

@@ret:
	pop si
    pop cx
    pop bx
    pop ax
    ret
endp ex1

;================================================
; Description - Stores digits '0' to '9' in ZeroToNine2
; INPUT: None
; OUTPUT: None
; Register Usage: AX, BX, CX, SI
;================================================
proc ex2
    push ax 
    push bx
    push cx
	push si 
    
    mov cx,10
    mov si,0
    mov al,30h
    
loop_start2:
    mov [ZeroToNine2+si],al
    inc al
    inc si
    loop loop_start2

@@ret:
	pop si 
    pop cx
    pop bx
    pop ax
    ret
endp ex2

;================================================
; Description - Stores digits '0' to '9' in ZeroToNine3
; INPUT: None
; OUTPUT: None
; Register Usage: AX, BX, CX, SI
;================================================
proc ex3
    push ax 
    push bx
    push cx
	push si 
    
    mov cx,10
    mov si,0
    mov al,30h
    
loop_start3:
    mov [ZeroToNine3+si],al
    inc al
    inc si
    loop loop_start3

@@ret:
	pop si 
    pop cx
    pop bx
    pop ax
    ret
endp ex3

;================================================
; Description - Stores value 0xCC in Array4 at specific positions
; INPUT: None
; OUTPUT: None
; Register Usage: AX, BX, CX, DX
;================================================
proc ex4
    push ax 
    push bx
    push cx
    push dx
    
    mov cx,100
    mov bx,0
    mov dl,7
    
loop_start4:
    xor ax,ax
    test bl, 1   
    jnz put_cc    
    mov al,bl
    div dl
    cmp ah,0
    jne no_good
    
put_cc:
    mov [Array4+bx],0CCh
no_good:
    inc bx
    loop loop_start4

@@ret:
    pop dx
    pop cx
    pop bx
    pop ax
    ret
endp ex4

;================================================
; Description - Copies 10 bytes from BufferFromEx5 to BufferToEx5
; INPUT: None
; OUTPUT: None
; Register Usage: AX, BX, CX
;================================================
proc ex5
    push ax 
    push bx
    push cx
    
    mov cx,10
    mov bx,0
loop_start5:
    mov al,[BufferFromEx5+bx]
    mov [BufferToEx5+bx],al
    inc bx
    loop loop_start5

@@ret:
    pop cx
    pop bx
    pop ax
    ret
endp ex5

;================================================
; Description - Copies numbers >12 from BufferFrom6 to BufferTo6
; INPUT: None
; OUTPUT: None
; Register Usage: AX, BX, CX, SI
;================================================
proc ex6
    push ax 
    push bx
    push cx
    push si
    
    mov si,0
    mov cx,50
    mov bx,0
loop_start6:
    mov al,[BufferFrom6+si]
    cmp al,13
    jb no_good2
    mov [BufferTo6+bx],al
    inc bx
no_good2:
    inc si
    loop loop_start6
    mov [BufferTo6Len],bl

@@ret:
    pop si 
    pop cx
    pop bx
    pop ax
    ret
endp ex6

;================================================
; Description - Computes length of string ending with CR (0Dh) in MyLine7
; INPUT: None
; OUTPUT: Stores length in Line7Length
; Register Usage: AX, BX
;================================================
proc ex7a
    push ax
    push bx
    
    mov bx,-1
loop_start7a:
    inc bx
    mov al,[MyLine7+bx]
    cmp al,13
    jne loop_start7a
    
    mov [Line7Length],bl
    
    pop bx
    pop ax
    ret
endp ex7a

;================================================
; Description - Computes length of word sequence ending with 0DDDDh in MyWords7
; INPUT: None
; OUTPUT: Stores length in MyWords7Length
; Register Usage: AX, BX
;================================================
proc ex7b
    push ax
    push bx
    
    mov bx,-2
loop_start7b:
    add bx,2
    mov ax,[MyWords7+bx]
    cmp ax,0DDDDh 
    jne loop_start7b
    
    shr bl,1
    mov [MyWords7Length],bl

@@ret:
    pop bx
    pop ax
    ret
endp ex7b



;================================================
; Description - Computes the sum of numbers greater than 100 in MyQ8
; INPUT: None
; OUTPUT: Stores sum in MySum8
; Register Usage: AX, BX
;================================================
proc ex8
    push ax
    push bx
    xor ax,ax 
    xor bx,bx 
loop_start8:
    mov al, [offset MyQ8+bx]
    inc bx
    cmp al,101
    jl no_good3
    add [MySum8],ax 
no_good3:
    cmp al,0
    jne loop_start8
@@ret:
    pop bx
    pop ax
    ret
endp ex8

;================================================
; Description - Counts positive, negative, and zero values in MySet9
; INPUT: None
; OUTPUT: Updates count1, count2, count3
; Register Usage: AX, BX
;================================================
proc ex9
    push ax 
    push bx
    xor bx,bx
loop_start9:
    mov ax, [MySet9+bx]
    inc bx 
    inc bx 
    cmp ax,0
    jng continue_checking
    inc [count1]
    cmp ax,0ffffh
    jne loop_start9
    jmp endloop
continue_checking:
    cmp ax,0
    jz zero
    inc [count2]
    cmp ax,0ffffh
    jne loop_start9
    jmp endloop
zero:
    inc [count3]
    cmp ax,0ffffh
    jne loop_start9
endloop:
    pop bx 
    pop ax 
    ret
endp ex9

;================================================
; Description - Converts Num10 to binary string in BinaryStr10
; INPUT: None
; OUTPUT: Prints and stores binary representation
; Register Usage: AX, BX, CX, DX
;================================================
proc ex10
    push ax
    push bx 
    push cx 
    push dx
    xor bx,bx
    mov cx,8
loop_start10:
    shl [num10],1
    jc put1
put0:
    mov [BinaryStr10+bx],0
    mov dl, 30h
    mov ah, 2
    int 21h
    jmp continue_loop
put1:
    mov [BinaryStr10+bx],'1'
    mov dl, 31h
    mov ah, 2
    int 21h
continue_loop:
    inc bx 
    loop loop_start10
    mov [BinaryStr10+8],'B'
    mov dl, "B"
    mov ah, 2
    int 21h
    pop dx 
    pop cx
    pop bx
    pop ax 
    ret
endp ex10

;================================================
; Description - Checks if bits 7 and 8 of EndGates11 are set
; INPUT: None
; OUTPUT: Updates Gate78 and prints appropriate message
; Register Usage: AX, BX, DX
;================================================
proc ex11
    push ax 
    push bx
    push dx
    mov bl, 192
    mov al,[EndGates11]
    and al,bl
    cmp al,192
    jne put_F
put_T:
    mov [Gate78] ,'T'
    mov dx, offset True11
    mov ah, 9
    int 21h
    jmp endprogram
put_F:
    mov [Gate78],'F'
    mov dx, offset False11
    mov ah, 9
    int 21h
endprogram:
    pop dx
    pop bx
    pop ax
    ret
endp ex11

;================================================
; Description - Copies Num12A to Num12B if in range [10,70]
; INPUT: None
; OUTPUT: Updates Num12B
; Register Usage: AX
;================================================
proc ex12
    push ax
    mov al ,[Num12A]
    cmp al,10
    jl skip
    cmp al,70
    jg skip
    mov [Num12B],al 
skip:
    pop ax 
    ret
endp ex12

;================================================
; Description - Converts string number in StrNum13 to integer in WordNum13
; INPUT: None
; OUTPUT: Stores converted value in WordNum13
; Register Usage: AX, BX, CX, DX, SI
;================================================
proc ex13
    push ax
    push bx 
    push cx 
    push dx
    push si 
    xor bx,bx 
get_length:
    mov al,[StrNum13+bx]
    inc bx 
    cmp al,'!'
    jne get_length
    dec bx 
    mov cx,bx
    mov dl,10
    xor bx,bx
    xor si,si
    xor ax,ax
build_num:
    mov bl,[strnum13+si]
    add bl,'0'
    mul dl
    add ax,bx
    inc si
    loop build_num
    mov [WordNum13],ax 
    pop si 
    pop dx 
    pop cx
    pop bx
    pop ax 
    ret
endp ex13

;================================================
; Description - Converts AL to hex character in DL
; INPUT: AL
; OUTPUT: DL contains ASCII hex representation
; Register Usage: AL, DL
;================================================
proc ex14a
    push ax
    and al,0fh
    mov dl,al
    cmp dl,9
    ja letter
    add dl ,'0'
    jmp to_end
letter:
    sub dl,0Ah
    add dl,65

to_end:
    pop ax
    ret
endp ex14a

;================================================
; Description - Converts AL to two hex characters in DL and DH
; INPUT: AL
; OUTPUT: DL and DH contain ASCII hex representation
; Register Usage: AL, DL, DH
;================================================
proc ex14b
    push ax
    ror al,4
    call ex14a
    mov dh,dl
    ror al,4
    call ex14a
    pop ax
    ret
endp ex14b

;================================================
; Description - Converts Num14Word to hex string in StrWord14
; INPUT: None
; OUTPUT: StrWord14 contains hex representation
; Register Usage: AX, DL, DH
;================================================
proc ex14c
    mov ax,[Num14Word]
    call ex14b
    mov [StrWord14+3],dl
    mov [StrWord14+2],dh
    mov al,ah
    call ex14b
    mov [StrWord14+1],dl
    mov [StrWord14+0],dh
    ret
endp ex14c







;================================================
; Description: print ax bytes to the screen
; INPUT: bx = pointer to the bytes , ax = how many bytes
; OUTPUT: screen
; Register Usage:  ax ,bx 
;================================================
proc printAxBytes
	push cx
	push dx
	
	mov cx,ax
@@ag:
	mov dl, [bx]
	mov ah,2
	int 21h
	inc bx
	loop @@ag
	
	pop dx
	pop cx
	ret
endp printAxBytes

; guess what this proc does ?
; without good names and lack of description, 
; no comments .... its very difficult
;================================================
; Description -  ??????????????????????? 
; INPUT: ????
; OUTPUT: ?????
; Register Usage: ????????????
;================================================
proc TTTTTttttttTTT
	
	mov bx,ax
	mov cx,4
CHChchchchc:
	
	mov dx,0f000h
	and dx,bx
	rol dx, 4          
	cmp dl, 9
	ja PPPFFFFpppfffff
	add dl, 48
	jmp ZzzzZzzZZZZ

PPPFFFFpppfffff:	 
	add dl, 55

ZzzzZzzZZZZ:
	mov ah, 2
	int 21h
	shl bx,4
	loop CHChchchchc
	
	ret
endp TTTTTttttttTTT





;================================================
; Description - Write on screen the value of ax (decimal)
;               the practice :  
;				Divide AX by 10 and put the Mod on stack 
;               Repeat Until AX smaller than 10 then print AX (MSB) 
;           	then pop from the stack all what we kept there and show it. 
; INPUT: AX
; OUTPUT: Screen 
; Register Usage:   
;================================================
proc ShowAxDecimal
	push ax
	push bx
	push cx
	push dx

	
jmp PositiveAx
	; check if negative
	test ax,08000h
	jz PositiveAx
		
	;  put '-' on the screen
	push ax
	mov dl,'-'
	mov ah,2
	int 21h
	pop ax

	neg ax ; make it positive
PositiveAx:
	mov cx,0   ; will count how many time we did push 
	mov bx,10  ; the divider

put_mode_to_stack:
	xor dx,dx
	div bx
	add dl,30h
	; dl is the current LSB digit 
	; we cant push only dl so we push all dx
	push dx    
	inc cx
	cmp ax,9   ; check if it is the last time to div
	jg put_mode_to_stack

	cmp ax,0
	jz pop_next  ; jump if ax was totally 0
	add al,30h  
	mov dl, al    
	mov ah, 2h
	int 21h        ; show first digit MSB
	   
pop_next: 
	pop ax    ; remove all rest LIFO (reverse) (MSB to LSB)
	mov dl, al
	mov ah, 2h
	int 21h        ; show all rest digits
	loop pop_next

	mov dl, ','
	mov ah, 2h
	int 21h

	pop dx
	pop cx
	pop bx
	pop ax

	ret
endp ShowAxDecimal

END start
 