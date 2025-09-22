---
tags: 
aliases:
  - asend
  - areceive
  - message passing asincrono
data: "`2025-01-18 12:51`"
---
- # Operazioni:
	- `void asend(msg_m m, pid_t dst)`:
	    - il mittente spedisce il messaggio `m` al processo `dst` e non rimane bloccato nella attesa che il destinatario riceva il messaggio.
	- `msg_t areceive(pid_t *snd)`:
	    - il destinatario riceve un messaggio dal processo `snd`; se il mittente non ha ancora spedito alcun messaggio, il destinatario si blocca in attesa di ricevere un messaggio
	    - si può anche usare `ANY` per dire che aspetta un messaggio generico.
- # Link Utili:
	- 