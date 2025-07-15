---
tags: []
aliases:
  - confidenzialità
  - integrità
  - accesso e disponibilità
  - autenticazione
data: "`2025-02-17 20:26`"
---
- # Principi Della Sicurezza Di Rete
	+ ## Confidenzialità ^92bd4c
		+ _Solamente il mittente e il destinatario sono capaci di interpretare il contenuto della loro comunicazione_.
			+ Il mittente cifra il messaggio e il destinatario lo decifra.
	+ ## Autenticazione
		+ _Il mittente e il destinatario devono confermare le loro corrispettive identità, ognuno nei confronti dell'altro_.
			+ Io sono veramente io e tu sei veramente tu.
	+ ## Integrità Del Messaggio ^cb41ce
		+ _Il contenuto della comunicazione non deve essere trasformato durante, o anche dopo, il transito di esso_.
			+ Se il messaggio viene modificato senza alcun tipo di controllo o senza il volere del mittente, allora c'è qualcosa che non va.
	+ ## Accesso E Disponibilità
		+ _I servizi devono essere accessibili e disponibili agli utenti_.
- # Attacchi Informatici
	+ ## Eavesdropping
		+ _Intercettazione di messaggi_.
	+ ## Insert
		+ _Inserimento di messaggi non voluti all'interno di una comunicazione_.
	+ ## Impersonation (MAC Spoofing)
		+ _Mi fingo per una macchina che in realtà non sono_.
	+ ## Hijacking
		+ _Mi inserisco al posto del mittente o del destinatario, prendendo il controllo della comunicazione_.
	+ ## Denial Of Service (DOS)
		+ _Faccio in modo di rendere inutilizzabile un servizio usato dagli utenti_.
- # Comunicazione Tra Utenti
	+ Gli _utenti comunicano del plain text, ma su Internet viaggia del cipher text_.
	+ Per cifrare il contenuto di un messaggio si utilizzano delle _funzioni one way_.
		+ Queste funzioni hanno degli algoritmi semplici per criptare il messaggio, ma algoritmi molto costosi e lenti per la decriptazione del messaggio.
	+ Il mittente e il destinatario condividono rispettivamente una _chiave di criptazione e una di decriptazione_.
		+ In questo modo, il messaggio può essere cifrato e decifrato solamente da queste due macchine e da nessun altro.