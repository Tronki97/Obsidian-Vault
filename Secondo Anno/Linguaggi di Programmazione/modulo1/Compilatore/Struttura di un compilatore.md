---
tags: 
aliases:
  - compilatore
  - tabella dei simboli
---
- Un compilatore è corretto quando preserva la [[Semantica e sintassi#^78ca9a||semantica]] e quindi per dimostrare sia corretto serve una semantica per il _linguaggio sorgente e quello oggetto_
- ## [[Analisi lessicale]]:
	- controlla che tutti i simboli utilizzati siano validi
		- dentro la tabella dei simboli
	- una volta completata genera una lista di token.
- ## [[Analisi sintattica]]:
	- Parser
	- dalla lista di token produce un albero di derivazione 
- ## [[Analisi semantica]]:
	- produce un albero di derivazione aumentato
- ## Genera forma intermedia: ^faab23
	- genera un codice intermedio ancora rudimentale, indipendente dall'architettura, traducibile facilmente in [[Linguaggio macchina]] 
	- usa operazioni molto semplici
		- $x:=y+z$
	- nella generazione del codice esegue la struttura dell'[[Alberi di derivazione#^09f5c6||albero sintattico]] :
		- ![[Pasted image 20240927193714.png||215]]![[Pasted image 20240927193723.png|300]]
- ## Ottimizzazione: ^5dbd0b
	- viene generata una forma intermedia ottimizzata per renderlo più efficiente.
		- rimuove codice inutile
		- espansione in linea di chiamate di funzione.
		- mettere fuori dai cicli sotto-espressioni che non variano.
- ## Generazione del codice:
	- Viene generato del codice per una specifica architettura 
- ## Tabella dei simboli: ^80f144
	- memorizza le informazioni sui nomi presenti nel programma 
		- per le matrici mette come attributo la dimensione e il tipo dei suoi elementi.