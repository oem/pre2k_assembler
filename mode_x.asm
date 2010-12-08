MODE_X proc near
  pusha
  mov ax, 0013h
  int 010h
  mov dx, 3C4h
  mov ax, 00604h
  out dx, ax
  mov ax, 0A000h
  mov es, ax
  xor di, di
  xor ax, ax
  mov cx, 08000h
  rep stosw
  mov dx, 3D4h
  mov ax, 0E317h
  out dx, ax
  popa
  ret
MODE_X endp

