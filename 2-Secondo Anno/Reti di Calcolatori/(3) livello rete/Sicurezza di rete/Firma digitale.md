---
tags:
aliases:
data: "`2026-02-08 19:14`"
---
- # Intro:
	- Consiste nell'inviare un messaggio $m$ accoppiato alla sua "firma"
		- $$(m, K^{-}(m))$$
	- In questo modo si ha la garanzia del mittente siccome solo lui può conoscere quella chiave.
- # Integrità:
	- Se il messaggio da inviare $m$ è troppo lungo allora l' [[2-Secondo Anno/Reti di Calcolatori/(3) livello rete/Sicurezza di rete/Crittografia#^8edacb|RSA]] potrebbe metterci troppo quindi non si firma $m$ ma il suo [[autenticazione#^b4148e|digest]] che risulterà più piccolo di $m$
		- $$(m, K^{-}(H(m)))$$
- # Link Utili:
	- 