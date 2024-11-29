---
tags:
  - TODO
aliases:
  - message passing sincrono
data: "`2024-11-29 10:16`"
---
- # Operazioni:
	- `ssend(msg_t m, pid_t dst)`:
		- il mittente spedisce il messaggio `m` al processo `dst` e rimane bloccato finché non riceve il messaggio
	- `areceive(pid_t snd)`
		- l destinatario riceve un messaggio dal processo `snd`; se il mittente non ha ancora spedito alcun messaggio, il destinatario si blocca in attesa di ricevere un messaggio.
		- se nello scope si mette ANY per dire che aspetta un messaggio generico.
- # Link Utili:
	- 