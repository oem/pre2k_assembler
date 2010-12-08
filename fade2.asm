; Fade from one image to another

fADE2 proc near
; DS:SI^2 = target dactable, ES:DI^2 dest. dactable
  pusha
  mov cx, 768
  push di
  push si
fade_loop:
  mov al, [si]
  mov ah, [di]
  cmp al, ah
  je fade_loop2
  ja fade_loop1
  inc al
  jmp fade_loop2
fade_loop1:
  dec al
  mov [si], al
  inc si
  inc di
  loop fade_loop
fade_loop2:
  pop di
  pop si
  call VWAIT
  call SETPAL
  popa
  ret
fADE2 endp

; This fades only one step, to totally fade you need to call this 63 times.
; This is so you can combine it with other effects
