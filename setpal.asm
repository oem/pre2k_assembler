; Set the palette
SETPAL proc near
  pusha
  mov cx, 768
  xor al, al
  mov dx, 3C8h
  out dx, al
  inc dx
  rep outsb
  popa
  ret
SETPAL endp
