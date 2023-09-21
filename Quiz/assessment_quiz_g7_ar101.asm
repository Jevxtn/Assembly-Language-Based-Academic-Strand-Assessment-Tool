.MODEL SMALL
.STACK 100H
.DATA                   

;======================================================================
;=                                                                    =
;=  ================================================================  =
;=  =  FINAL PROJECT FOR AR101 - SBIT3J - 2022                     =  =
;=  =  GROUP 7 - RIVERA, SANCHEZ, VILLEGAS, ZAPICO, CHARLENE,ROWY? =  =
;=  ============================================================== =  =
;=                                                                    =
;======================================================================                                                             
                                                             
;INTRODUCTION MESSAGE                                               
MSG1 DB '                       WELCOME TO SHS ASSESSMENT TEST        $'
MSG97 DB '           BEFORE TAKING THE ASSESSMENT TEST READ THE TIPS CAREFULLY   $'
MSG2 DB ' TIPS : $'
MSG3 DB ' >> All the questions are mixed of ICT. HUMSS. ABM. STEM.$'
MSG4 DB ' >> At the end of the test it will determine what strand are you capable of..$'
MSG99 DB ' >> Read the entire question. $'
MSG98 DB ' >> Manage your time well. $'         

;==================================================================

;MESSAGE FOR START OF THE TEST
MSG5 DB 'PRESS ENTER TO START THE TEST : $'   

;==================================================================

;DISPLAY FOR RIGHT AND WRONG MESSAGE 
MSG7 DB 'Wrong Answer....$'               
MSG6 DB 'Right Answer....$'                      

;==================================================================

;END OF THE TEST MESSAGE
MSG8 DB 'You have successfully completed your test.$'
MSG9 DB 'Congrats! ICT : $bb'     

;==================================================================

;RE-ATTEMPT THE TEST PRESS 1 OR 0 TO EXIT MESSAGE
MSG10 DB 'Press 1 to Re-attempt test or 0 to Exit. $'

;================================================================== 

;EXIT MESSAGE 
MSG11 DB '*******Thank you, Merry Xmas and Happy New Year.! *******$'
MSG12 DB '  *Every students learns in slightly different ways.  $'
MSG13 DB '   Academic tracking presents a curriculum for each student $'
MSG14 DB '   that aligns with their specific abilities but it doesnt  $'
MSG15 DB '   mean that it will decide for what you really wanted.*  $'
                                              
;==================================================================                                              

;QUESTIONS
Q1 DB '1. Which statement is true for a line that passes through points (-2, 4) and (3, 4)?$'
QA1 DB '   a)Line has a negative slope. b)Line has a positive slope. c)None$'
Q2 DB '2. Similar to emotional intelligence, intrapersonal skills include$'         
QA2 DB '   a)Self-confidence    b)Confidence    c) Intelligence$'
Q3 DB '3. How many characters should a strong password be?$'
QA3 DB '   a) 8    b) 16    c) 23$'
Q4 DB '4. Which is the best program to use to write a letter?$'
QA4 DB '   a)Microsoft Word    b)Adobe Photoshop    c) Paint$'
Q5 DB '5. It is the study of differentiation and integration.$'
QA5 DB '   a)Mathematics    b)Basic Calculus    c) None of the above$'
Q6 DB '6. This essential gas is important so that we can breath.$'
QA6 DB '   a)Oxygen    b)Hydrogen    c) Air$'
Q7 DB '7. It is related to or being mathematical prerequisites for the study of calculus.?$'
QA7 DB '   a)Pre-calculus    b)Calculus    c)Mathematics$'
Q8 DB '8. The accounting cycle includes the following, EXCEPT?$'
QA8 DB '   a)Analyzing    b)Recording    c)Interpreting$'
Q9 DB '9. Which of the following is an intangible asset??$'
QA9 DB '   a)patents    b)All of the above    c) copyrights$'
Q10 DB '10. Should you encrypt confidential data?$'
QA10 DB '   a)Yes    b)No    c)Maybe$'
Q21 DB '11. Resource increases from the sale of goods or services are called?$'
QA21 DB '   a)Revenues   b)Assets   c)Gains $'
Q22 DB '12. Which of the following issues licenses to practice as a CPA?$'
QA22 DB '   a)Board of Accountancy   b)Philippine Institute of Certified Public Accountant  c)Financial Reporting Standard Council$'
Q23 DB '13. The earth has three layers of varying temperatures. What are its three layers?$'
QA23 DB '   a)Crust.Granite.Mantle  b)Crust.Mantle.Core  c)Solid rock.Granite.Crust$'
Q24 DB '14. What is the rarest blood type?$'
QA24 DB '   a)O   b)AB negative  c)A positive$'
Q25 DB '15. On what part of your body would you find the pinna?$'
QA25 DB '   a)Ear  b)Nose  c)Face $'
Q26 DB '16. Who was the scientist to propose the three laws of motion?$'
QA26 DB '   a)Isaac Newton  b)Albert Einstein  c)Charles Darwin $'
Q27 DB '17. It refers to the way humans act and interact.?$'
QA27 DB '   a)Behavior  b)Physical Behavior  c)Human Behavior $'
Q28 DB '18. What is an embedded system?$'
QA28 DB '   a)A Human  b)A Car  c)A Microprocessor $'
Q29 DB '19. How should you start an email?$'
QA29 DB '    a)Write your name  b)Write the subject  c)Put the date $'
Q30 DB '20. Does a Computer/Laptop have a GUI (Graphics User Interface)?$'
QA30 DB '   a) Yes  b) No  c)Maybe $' 
   

;=================================================================

.CODE             

MAIN PROC           
    
;PRINTING ALL  MSG1 DB TO MSG4 DB 
    MOV AX,@DATA
	MOV DS,AX
    
	LEA DX,MSG1
	MOV AH,9
	INT 21H
	
	CALL NL 
	
	LEA DX,MSG97
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,MSG2
	MOV AH,9
	INT 21H
    
	CALL NL
    
	LEA DX,MSG3
	MOV AH,9
	INT 21H
    
    CALL NL
    
	LEA DX,MSG4
	MOV AH,9
	INT 21H    
	
	CALL NL     
	
	LEA DX,MSG99
	MOV AH,9
	INT 21H
	
	CALL NL
	
	LEA DX,MSG98
	MOV AH,9
	INT 21H   
	
	
;=================================================================	
	
	;To Start the quiz
	START:
	MOV BL, 0  
    CALL NL
    
	LEA DX,MSG5   ;PRINT - PRESS ENTER TO START THE TEST
	MOV AH,9
	INT 21H
	
	
	MOV AH, 1
	INT 21H
	
	CMP AL, 0DH
	JE QSN1
	JNE START
;================================================================	
	QSN1:
	CALL NL
    
	LEA DX,Q1
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA1  
	MOV AH,9
	INT 21H
	
	CALL NL     ;NL - NEXT LINE
    
	MOV AH, 1
	INT 21H
	CMP AL, 'a' 
	JE QSN2
    JNE QSNW2

;===============================================================	
	QSN2:
	CALL NL
    
	LEA DX,MSG6 
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN2 
	
	CALL INPUT
	
	CMP AL, 'a'  
	JE QSN3
	JNE QSNW3
	
	QSNW2:      
	CALL NL
    
	LEA DX,MSG7  
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN2 
	CALL INPUT
	
	CMP AL, 'b'  
	JE QSN3 
	JNE QSNW3
	
;===============================================================	
	QSN3:
	CALL NL
    
	LEA DX,MSG6  
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL    

    
	CALL QN3 
	CALL INPUT
	
	CMP AL, 'a'  
	JE QSN4
	JNE QSNW4
	
	QSNW3:
	CALL NL
    
	LEA DX,MSG7   
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN3
	CALL INPUT
	
	CMP AL, 'b'   
	JE QSN4 
	JNE QSNW4
;================================================================	
	QSN4:
	CALL NL
    
	LEA DX,MSG6   
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'a'  
	JE QSN5
	JNE QSNW5
	
	QSNW4:
	CALL NL
    
	LEA DX,MSG7  
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'b'  
	JE QSN5 
	JNE QSNW5
;================================================================	
	QSN5:
	CALL NL
    
	LEA DX,MSG6   
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN5 
	
	CALL INPUT
	
	CMP AL, 'b'   
	JE QSN6
	JNE QSNW6
	
	QSNW5:
	CALL NL
    
	LEA DX,MSG7  
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN5 
	CALL INPUT
	
	CMP AL, 'a'    
	JE QSN6 
	JNE QSNW6
;================================================================	
	QSN6:    
	CALL NL
    
	LEA DX,MSG6   
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN6 
	
	CALL INPUT
	
	CMP AL, 'a'   
	JE QSN7
	JNE QSNW7
	
	QSNW6:      
	CALL NL
    
	LEA DX,MSG7   
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN6 
	CALL INPUT
	
	CMP AL, 'b'   
	JE QSN7 
	JNE QSNW7
;===================================================================	
	QSN7:
	CALL NL
    
	LEA DX,MSG6    
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN7
	CALL INPUT
	
	CMP AL, 'a'    
	JE QSN8
	JNE QSNW8
	
	QSNW7:
	CALL NL
    
	LEA DX,MSG7    
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN7 
	CALL INPUT
	
	CMP AL, 'b'    
	JE QSN8 
	JNE QSNW8
;==================================================================	
	QSN8:
	CALL NL
    
	LEA DX,MSG6    
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN8 
	CALL INPUT
	
	CMP AL, 'c'    
	JE QSN9
	JNE QSNW9
	
	QSNW8:     
	CALL NL
    
	LEA DX,MSG7    
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN8 
	CALL INPUT
	
	CMP AL, 'a'    
	JE QSN9 
	JNE QSNW9
;==================================================================	
	QSN9:
	CALL NL
    
	LEA DX,MSG6  
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN9 
	CALL INPUT
	
	CMP AL, 'b'  
	JE QSN10       
	JNE QSNW10     
	             
	QSNW9:       
	CALL NL
    
	LEA DX,MSG7    
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN9 
	CALL INPUT
	
	CMP AL, 'a'    
	JE QSN10   
	JNE QSNW10
;==================================================================	
	QSN10:       
	CALL NL
    
	LEA DX,MSG6    
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN10 
	CALL INPUT
	
	CMP AL, 'a'     
    JE QSN21
    JNE QSNW21
	
	QSNW10:    
	CALL NL
    
	LEA DX,MSG7     
	MOV AH,9
	INT 21H
	
	CALL NL
    
	CALL QN10 
	CALL INPUT
	
	CMP AL, 'a'     
	JE QSN21
	JNE QSNW21     
	     
	
;==================================================================	
	QSN21:
	CALL NL    
	
	LEA DX,MSG6     
	MOV AH,9
	INT 21H

	INC BL
	CALL NL
	
	CALL QN21
	CALL INPUT
	
	CMP AL, 'a'     
    JE QSN22
    JNE QSNW22
	
	QSNW21:
	CALL NL
	
	LEA DX,MSG7     
	MOV AH,9
	INT 21H
	
	CALL NL
	
	CALL QN21
	CALL INPUT
	
	CMP AL, 'c'     
    JE QSN22
    JNE QSNW22      
    
;==================================================================	
    QSN22:
    CALL NL
    
    LEA DX,MSG6    
    MOV AH,9        
    INT 21H
    
    
    INC BL
    CALL NL
    
    CALL QN22
    CALL INPUT
    
    CMP AL, 'a'    
    JE QSN23
    JNE QSNW23
    
    QSNW22:
    CALL NL
    
    LEA DX,MSG7    
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN22
    CALL INPUT
    
    CMP AL, 'b'    
    JE QSN23
    JNE QSNW23
;==================================================================
    QSN23:
    CALL NL
    
    LEA DX,MSG6    
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN23
    CALL INPUT
    
    CMP AL,'b'     
    JE QSN24
    JNE QSNW24
    
    QSNW23:
    CALL NL
    
    LEA DX,MSG7    
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN23
    CALL INPUT
    
    CMP AL,'a'     
    JE QSN24
    JNE QSNW24
 ;=================================================================
    QSN24:
    CALL NL
    
    LEA DX,MSG6    
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN24
    CALL INPUT
    
    CMP AL,'b'     
    JE QSN25
    JNE QSNW25
    
    QSNW24:
    CALL NL 
    
    LEA DX,MSG7    
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN24
    CALL INPUT
    
    CMP AL,'a'    
    JE QSN25
    JNE QSNW25
;==================================================================
    QSN25:
    CALL NL
    
    LEA DX,MSG6   
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN25
    CALL INPUT
    
    CMP AL,'a'    
    JE QSN26
    JNE QSNW26
    
    QSNW25:
    CALL NL 
    
    LEA DX,MSG7   
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN25
    CALL INPUT
    
    CMP AL,'c'    
    JE QSN26
    JNE QSNW26
;==================================================================
    QSN26:
    CALL NL
    
    LEA DX,MSG6    
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN26
    CALL INPUT
    
    CMP AL,'c'
    JE QSN27
    JNE QSNW27
    
    QSNW26:
    CALL NL 
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    
    CALL NL
   
    CALL QN26
    CALL INPUT
    
    CMP AL,'a'
    JE QSN27
    JNE QSNW27
;=================================================================
    QSN27:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN27
    CALL INPUT
    
    CMP AL,'c'
    JE QSN28
    JNE QSNW28
    
    QSNW27:
    CALL NL 
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN27
    CALL INPUT
    
    CMP AL,'a'
    JE QSN28
    JNE QSNW28
;=================================================================
    QSN28:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN28
    CALL INPUT
    
    CMP AL,'c'
    JE QSN29
    JNE QSNW29
    
    QSNW28:
    CALL NL
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN28
    CALL INPUT
    
    CMP AL,'b'
    JE QSN29
    JNE QSNW29
;==================================================================
    QSN29:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN29
    CALL INPUT
    
    CMP AL,'a'
    
    QSNW29:
    CALL NL
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN29
    CALL INPUT
    
    CMP AL,'b'
  
;==================================================================  
    QSN30:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN30
    CALL INPUT
    
    CMP AL,'a'
    JE EXIT
    JNE EXITW
    
    QSNW30:
    CALL NL
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    
    CALL NL
    
    CALL QN30
    CALL INPUT
    
    CMP AL,'c'
    JE EXIT
    JNE EXITW  
;==================================================================    
    
    
    
    
     
	EXIT:         ;EXIT RIGHT ANSWER
	CALL NL 
    
	LEA DX,MSG6    ;PRINT - RIGHT ANSWER
	MOV AH,9
	INT 21H
	
	INC BL         ;INC - incrementing an operand by one
	CALL NL        ;BL - Branch and Link (call&return)
	CALL NL
    
	LEA DX,MSG8   ;PRINT - COMPLETED THE TEST
	MOV AH,9
	INT 21H
	
	CALL NL 

	LEA DX,MSG9   
	MOV AH,9
	INT 21H

	
	ADD BL, 48
	
	CMP BL,57
	JG TEN
	MOV AH, 2
	MOV DL, BL
	INT 21H
	JMP EXIT1
	
	EXITW:       ;EXIT WRONG ANSWER
	CALL NL
    
	LEA DX,MSG7   ;PRINT - WRONG ASNWER
	MOV AH,9
	INT 21H
	
	CALL NL
	CALL NL  

    
	LEA DX,MSG8   
	MOV AH,9
	INT 21H 
	
	CALL NL
    CALL NL
    
	LEA DX,MSG9   
	MOV AH,9
	INT 21H
	
	ADD BL,48
	MOV AH,2
	MOV DL, BL
	INT 21H
	
	JMP EXIT1
	
	TEN:
	MOV AH,2
	MOV DL,"1"
	INT 21H  
	MOV DL,"0"
	INT 21H
	JMP EXIT1
	
	NL: 
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    RET                 
    
    
    
    
    
    
    
    
    
    

;===============================================================    
    QN2:        
    LEA DX,Q2    
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA2   
	MOV AH,9
	INT 21H
	RET 

;===============================================================	
	QN3:
    LEA DX,Q3    
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA3   
	MOV AH,9
	INT 21H
	RET

;===============================================================	
	QN4:
    LEA DX,Q4   
	MOV AH,9
	INT 21H
	
	CALL NL
                
	LEA DX,QA4  
	MOV AH,9
	INT 21H
	RET         ;Return from Procedure - RET

;===============================================================	
	QN5:
    LEA DX,Q5   
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA5  
	MOV AH,9
	INT 21H
	RET     

;===============================================================	
	QN6:
    LEA DX,Q6   
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA6  
	MOV AH,9
	INT 21H
	RET

;================================================================	
	QN7:
    LEA DX,Q7  
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA7 
	MOV AH,9
	INT 21H
	RET 

;================================================================
	QN8:
    LEA DX,Q8  
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA8  
	MOV AH,9
	INT 21H
	RET  

;================================================================	
	QN9:
    LEA DX,Q9   
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA9  
	MOV AH,9
	INT 21H
	RET       
	
;================================================================	
	QN10:
    LEA DX,Q10    
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA10  
	MOV AH,9
	INT 21H
	RET  


;================================================================
	 QN21:
	 LEA DX,Q21
	 MOV AH,9
	 INT 21H
	 
	 CALL NL
	 
	 LEA DX,QA21
	 MOV AH,9
	 INT 21H
	 RET
;================================================================	
	 QN22:
	 LEA DX,Q22
	 MOV AH,9
	 INT 21H
	 
	 CALL NL     
	 
	 LEA DX,QA22
	 MOV AH,9
	 INT 21H
	 RET
;================================================================

     QN23:
     LEA DX,Q23
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA23
     MOV AH,9
     INT 21H
     RET
;================================================================
     QN24:
     LEA DX,Q24
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA24
     MOV AH,9
     INT 21H
     RET
;================================================================
     QN25:
     LEA DX,Q25
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA25
     MOV AH,9
     INT 21H
     RET
;=================================================================
     QN26:
     LEA DX,Q26
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA26
     MOV AH,9
     INT 21H
     RET
;=================================================================
     QN27:
     LEA DX,Q27
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA27
     MOV AH,9
     INT 21H
     RET
;=================================================================
     QN28:
     LEA DX,Q28
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA28
     MOV AH,9
     INT 21H
     RET
;=================================================================
     QN29:
     LEA DX,Q29
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA29
     MOV AH,9
     INT 21H
     RET
;=================================================================
     QN30:
     LEA DX,Q30
     MOV AH,9
     INT 21H
     
     CALL NL
     
     LEA DX,QA30
     MOV AH,9
     INT 21H
     RET
;=================================================================
	         
	INPUT:
	CALL NL
    
	MOV AH, 1
	INT 21H
	RET
	
	
	EXIT1:   
	CALL NL 
	CALL NL
	
	LEA DX,MSG10     
	MOV AH,9
	INT 21H
	
	MOV AH,1
	INT 21H
	
	CMP AL,'1'  
	JE START 
	
	CALL NL
	CALL NL

;=================================================================	

 ;PRINT MESSAGES
	LEA DX,MSG11  
	MOV AH,9
	INT 21H  
	
	CALL NL
	
	LEA DX,MSG12 
	MOV AH,9
	INT 21H
	
	CALL NL
	
	LEA DX,MSG13
	MOV AH,9
	INT 21H
	
	CALL NL
	
	LEA DX,MSG14
	MOV AH,9
	INT 21H
	
	CALL NL
	
	LEA DX,MSG15
	MOV AH,9
	INT 21H
	
	
;==================================================================	
	
	
	MOV AH, 4CH
	INT 21H
	
	MAIN ENDP
END MAIN
