; Reading the current palette
GETPAL proc near
  pusha
  mov cx, 768
  xor al, al
  mov dx, 3C7h
  out dx, al
  mov dx, 3C9h
  rep insb
  popa
  ret
GETPAL endp
