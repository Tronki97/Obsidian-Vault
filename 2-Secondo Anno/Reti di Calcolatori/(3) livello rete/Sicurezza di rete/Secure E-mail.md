---
tags: []
aliases: 
data: "`2025-02-24 13:42`"
---
- # Certification authority:
	- La secure e-mail è una applicazione delle _certification authority_
	- La _CA_ lega una chiave pubblica ad una entità $E$ che può essere un router, persona ecc.. La quale registra la sua chiave pubblica con una certification authority.
	- La CA cripta la chiave pubblica di $E$ con la sua chiave privata e la firma digitale della CA viene aggiunta alla chiave pubblica di $E$, quindi ora tutti possono verificare che la chiave pubblica di $E$ è quella corretta.
	- Le CA sono enti fidati che si occupano di garantire l'autenticità delle chiavi pubbliche.
	- I certificati di sicurezza possono scadere perché tenere la stessa chiave per troppo tempo la espone a brute force. 
- # Argomento:
	- ![[Pasted image 20250224134316.png]]
	- la $K_{B}^{+}$ è la chiave pubblica di Bob che Alice riceve però dalla certification authority _non da Bob stesso_.
	- per garantire l’[[autenticazione]] di rete viene aggiunta, al messaggio, la firma digitale come l’Hash del messaggio criptato con la chiave privata di Alice ($K_{A}^{-}$)
		- ![[Pasted image 20250224134554.png]]
- # completo
	- ![[Untitled 2 1.webp]]
		- è un unione di procedure: inviati $K_{S}(K_{A}^{-}(H(m))), K_{S}(m), K_{B}^{+}(K_{S})$
- Tutto quello appena visto è anche detto _PEC_ alla quale si può aggiungere anche una _marca temporale_ la quale dice il momento in cui il server di invio ha ricevuto quel messaggio per inviarlo via posta; anche questa marca è fornita da una _CA_.