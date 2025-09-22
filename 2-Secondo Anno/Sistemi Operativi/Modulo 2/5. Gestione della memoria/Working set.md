---
tags: []
aliases: 
data: "`2025-04-06 20:06`"
---
- # Def:
	- Un _working set_ di finestra $\Delta$ è l’insieme delle pagine che sono state usate negli ultimi $\Delta$ riferimenti.
	- Il che quindi è una approssimazione del concetto di località.
	- Se una pagina non compare nei $\Delta$ riferimenti successivi, allora esce dal _working set_ ovvero non è più una pagina su cui si sta lavorando attivamente. 
- # ES:
	- $\Delta=5$
	- ![[Pasted image 20250406200105.png]]
- # Utilità:
	- In caso la dimensione della finestra sia ben calcolata allora il _working set_ sarebbe una buona approssimazione dell’insieme delle _pagine utili_.
	- La somma di tutti i working set dei processi attivi deve essere sempre _minore_ del numero di frame disponibili altrimenti si andrebbe in [[Thrashing]].
- # Scelta della finestra:
	- ## Troppo piccola:
		- Si potrebbe considerare inutile ciò che poterebbe servire
		- Si sceglierebbero meno [[Gestione della memoria#^0a9c21|pagine]] rispetto a quelle che servirebbero al [[Concorrenza#^68dcd8|processo]].
		- Si potrebbe generare un “falso negativo” di _thrashing_.
	- ## Troppo grande:
		- Si potrebbe considerare utile ciò che non serve.
		- Si sceglierebbero più pagine rispetto a quelle che servirebbero al processo.
		- Si potrebbe generare un “falso positivo” di _thrashing_.
- # Come usarlo:
	- Per controllare l’allocazione dei frame dei singoli processi.
	- Quando ci sono abbastanza [[Gestione della memoria#^184dd2|frame]] disponibili, non occupati dai vari _working set_ dei processi attivi, allora si può attivare un nuovo processo.
	- Quando invece la somma totale dei _working set_ supera il numero di frame totali, si può decidere di sospendere un processo.
- # Link Utili:
	- 