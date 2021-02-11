.model small
.data
       num1 db 22h
	   num2 db 11h
	   
	   
	   
	   
	   
.code
.startup

main:
       mov ax,@data
       mov ds,ax
       mov al,num1
       add a1,num2
.exit
end
