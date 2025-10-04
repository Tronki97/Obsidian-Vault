---
tags:
aliases:
data: "`2025-10-01 17:19`"
---
- # Strutture dati annidate:
	- Per rappresentare il concetto di [[Modello dati relazionale|relazione logica]], si possono specificare i dati che tendono a variano nel tempo, a loro volta dividere quei dati in più tabelle diverse.
		- ![[Pasted image 20251001094931.png|500]]
			- In rosso i dati riguardanti la ricevuta e il costo finale
			- Mentre in blu i dati che hanno portato al prezzo totale della ricevuta.
		- ![[Pasted image 20251001095151.png|500]]
	- Oppure si può usare una sola tabella espandendo la descrizione di ogni elemento rappresentando l'elemento al più alto livello.
		- ![[Pasted image 20251001095129.png|500]]
		- Però questo metodo è il meno usato in quanto è meno capibile e c'è ridondanza dei dati 
	- Usare le due tabelle separate potrebbe non essere la scelta proprio ottimale se si necessita di rappresentare un ordine o ripetibilità, in quel caso si necessita di introdurre dei campi che permettano di rappresentarli:
		- ![[Pasted image 20251001100104.png]]
- # Link Utili:
	- 