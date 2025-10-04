---
tags:
aliases:
  - chiave primaria
data: "`2025-10-01 10:45`"
---
- # Chiavi:
	- Un insieme di attributi che identifica univocamente le [[Modello dati relazionale#^e8f57b|tuple]] dentro una relazione ovvero:
		- _Una superchiave è quindi un insieme $K$ di attributi su $r$, se non ci sono 2 tuple distinte $t_{1}$ e $t_{2}$ in $r$ tali che $t_{1}[K]=t_{2}[K]$ _
		- Una _chiave_ è una superchiave minimale  
	- ## ES:
		- ![[Pasted image 20251001104821.png]]
		- _number_ è una superchiave che contiene solo un attributo quindi è anche una _chiave_
		- L'insieme composto da _nome, cognome, e data di nascita_ formano un'altra chiave ma non una superchiave perché togliendo uno degli attributi si può creare un falso match definendo 2 tuple come uguali:
			- Se togliessi il _cognome_ la 2° e 4° riga matcherebbero 
	- # Esistenza delle chiavi:
		- Visto che le tuple sono tutte diverse so di per certo che in una tabella esiste sempre almeno una chiave.
		- Ogni [[Modello dati relazionale|relazione logica]] ha una _superchiave_ che è l'insieme di tutti gli attributi
	- # Importanza:
		- Le chiavi permettono di accedere a ciascuna tupla nel database e di correlare tuple tra le varie relazioni.
	- ## Valori NULL:
		- Se la tupla contiene dei valori NULL il valore della chiave non permette di identificare le tuple e creare facilmente i riferimenti esterni da altre relazioni.
		- ![[Pasted image 20251001174226.png|450]]
	- ## Chiave primaria: ^ef193d
		- La chiave primaria (_PK_), è una chiave che non può avere valori NULL, specificata <u>sottolineandola</u>.
		- ![[Pasted image 20251001112437.png|450]]
- # Link Utili:
	- 