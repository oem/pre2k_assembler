XPLOT proc near
; cx = x, dx = y, bl = color
  pusha
  push cx
  push dx
  mov ax, 1
  and cx, 3
  shl ax, cl
  mov ah, al
  mov al, 002h
  mov dx, 3C4h
  out dx, ax
  pop dx
  pop cx
  shr cx, 2
  mov di, cx
  mov ax, 80
  mul dx
  add di, ax
  mov es:[di], bl
  popa
  ret
XPLOT endp
