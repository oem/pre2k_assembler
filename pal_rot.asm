PAL_ROT proc near
; rotates palette 1 step. CL = start color, CH = end color
; DS:SI dactable
  pusha
  mov di, si
  mov ax, 3
  mul cl
  add si, ax
  mov ax, 3
  mul ch
  add di, ax
  mov bx, [si]
  mov dl, [si+2]
  mov cx, di
  sub cx, si
  mov di, si
  add si, 3
  cld
  or cx, cx
  jns rotate
  std
  neg cx
  sub si, 4
  add di, 2
  add cx, 2
rotate:
  rep movsb
  cld
  popa
  ret
PAL_ROT endp
