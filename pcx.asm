PCX proc near
; DS:SI^2 PCX without header in RAM, ES:DI = target
  pusha
  push si
  add si, Count - 769
  lodsb
  cmp al, 0Ch
  jnz decode
  mov cx, 768
palset:
  mov al, [si]
  shr al, 2
  mov [si], al
  inc si
  loop palset
  sub si, 768
  call SETPAL
decode:
  pop si
  mov cx, Count - 769
d1:
  lodsb
  mov ah, al
  and ah, 0C0h
  cmp ah, 0C0h
  jnz d4
  jmp d3
d2:
  loop d1
  popa
  ret
d3:
  push ax
  and al, 03Fh
  mov cl, al
  xor ch, ch
  lodsb
  rep stosb
  pop cx
  dec cx
  jmp d2
d4:
  stosb
  jmp d2
PCX endp
