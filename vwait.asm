; Synchronize with vertical retrace of the monitor

VWAIT proc near
  pusha
  mov dx, 3DAh
v1:
  in al, dx
  and al, 008h
  jnz v1
v2:
  in al, dx
  and al, 008h
  jz v2
  popa
  ret
VWAIT endp
