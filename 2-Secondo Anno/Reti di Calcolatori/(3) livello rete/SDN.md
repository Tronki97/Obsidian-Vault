---
tags: []
aliases: 
data: "`2025-03-17 11:32`"
---
- # Argomento:
	- Reti nelle quali molte opzioni possono essere definite dal sistemista via software.
	- Ad ogni router si associa una _local flow table_.
	- ## Flusso:
		- Sequenza dei dati scambiati tra gli host ed è definito nell’header dei pacchetti.
	- ## Regole di gestione dei pacchetti:
		- ### Azioni:
			- Metodi per i pacchetti che fanno match con determinati pattern.
			- `drop, forward, modify, send to controllere`.
		- ### Priorità:
			- Disambigua dei pattern che si sovrappongono.
		- ### Contatori:
			- Numero di bytes.
			- Numero di pacchetti.
		- ![[Pasted image 20250317113739.png||400]]
	- ## Entrate della tabella di flusso:
		- ![[Pasted image 20250317113943.png||500]]