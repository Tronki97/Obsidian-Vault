---
tags:
aliases:
data: "`2026-05-07 10:49`"
---
- # Criptografia asimmetrica:
	- Si usano coppie di chiavi: _pubbliche_ e _private_; quelle pubbliche vengono salvate in delle repository pubbliche.
	- Ogni volta che un utente necessita di inserire una chiave pubblica in questa _repo_ si necessita di autenticare l'utente e verificare che la chiave che si sta inserendo sia effettivamente di quell'utente.
	- ![[Pasted image 20260220113932.png|500]]
	- Questo schema garantisce la confidenzialità perché solo _bob_ riuscirà a decriptare il messaggio criptato con la chiave pubblica di bob $K_{B}^{+}$ perché possiede la chiave privata $K_{B}^{-}$
		- Quindi $K_{B}^{-}(K_{B}^{+}(m))=m$.
	- Si usa anche per firmare digitalmente un messaggio per far quindi capire che è proprio di quell'utente
- # Link Utili:
	- 