---
tags: []
aliases:
  - man in the middle
  - message digest
data: "`2025-02-24 11:48`"
---
- # Autenticazione:
	- l’obiettivo è evitare che Trudy abbia effetto con il replay attack(registrare il messaggio di Alice e ripeterlo per far finta di essere lei).
	- per riuscirci Bob manda una R che poi verrà risolta con una chiave da Alice che la manda a Bob il quale poi le chiederà la chiave pubblica di Alice.
- # Man in the middle:
	- un attaccante si finge un altro utente con il quale si è convinti di star parlando.
	- piazzandosi in mezzo fa passare la R e rispedisce indietro la $K^{-}_{T}(R)$ e poi le verrà richiesta la chiave pubblica e lei manderà la sua chiave pubblica che però è diversa da quella di Alice.
	- poi si prosegue guardando il messaggio decriptandolo leggendolo e facendolo passare ri-criptato nuovamente come se non fosse mai stato intercettato.
	- ![[Untitled 1 2.webp|500]]
	- ## Problema:
		- serve una garanzia che la chiave pubblica che viene ricevuta sia effettivamente quella dell’interlocutore col quale si vuole parlare.
	- ## Soluzione:
		- si usa una certification authority. composta da un numero di “persone” che tra di loro si certificano i messaggi.
- # Message Digest:
	- rappresentare delle digestioni di un messaggio attraverso delle [[Tabelle Hash#^01153a|funzioni hash]], 
		- ![[Pasted image 20250224123617.png]]
		- ha dimensione compatta, e costante.
		- ed è infattibile risalire al messaggio originale da quello _hashato_ senza la chiave appropriata.
			- non è quindi una funzione biettiva creando quindi delle collisioni nell’insieme dei messaggi _hashati_
	- l’interesse dell’attaccante è sostituire il messaggio x con un y tale che:
		- $H(x)=H(y)$
		- ma è molto difficile da fare e non avrebbe senso cercare un messaggio diverso che magari non ha l’obiettivo che serve.