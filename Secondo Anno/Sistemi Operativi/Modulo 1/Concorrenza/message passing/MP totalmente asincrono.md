---
tags: []
aliases:
  - messagge passing totalmente asincrono
  - totalmente asincrono
data: "`2024-11-29 10:19`"
---
- # # Operazioni:
	- `void asend(msg_t m, pid_t dst)`:
		- il mittente spedisce il messaggio `m` al processo `dst` e non si blocca
	- `msg_t nb-receive(pid_t snd)`
		- l destinatario riceve un messaggio dal processo `snd`; se il mittente non ha ancora spedito alcun messaggio, la funzione termina ritornando un messaggio nullo.
		- se nello scope si mette ANY per dire che aspetta un messaggio generico.
- # Link Utili:
	- 