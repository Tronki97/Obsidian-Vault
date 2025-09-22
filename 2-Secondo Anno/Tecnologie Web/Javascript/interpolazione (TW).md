---
tags: []
aliases: 
data: "`2024-12-02 17:06`"
---
- # Argomento:
	- nei siti web sono presenti stringhe di dati molto lunghe e difficili da interpretare 
	- in alcuni siti web sono presenti molte pagine con simile struttura con magari solo il testo che cambia (vedi wikipedia), per questo si usano dei template: 
		- file dove non c’è contenuto ma solo la parte grafica in cui sono presenti placeholder che vengono modificati dall’applicazione quando viene eseguito il codice relativo.
- # interpolazione di variabili:
	- ## Virgolette annidiate:
		- Le virgolette sono caratteri ammessi in HTML, e sono caratteri fondamentali nel markup
		- [[HTML]] è esso stesso una stringa, che può essere prodotto programmaticamente. Le virgolette sono delimitatori standard delle stringhe.
			- `var a ="<p class='"+obj.class+"'>"+obj.testo+"</p>"`
		- Le virgolette possono essere annidate, ma è sconsigliato perché rende il codice illeggibile
			- `var b="<button onclick='doX(\""+obj.par+"\")'>"+obj.testo+"</button>"`
	- ## Template server-side:
		- I template server-side servono per generare un documento pronto a partire da un ambiente di computazione e un documento HTML vuoto con variabili da interpolare.
	- ## Nascondere i template:
		- Consiste nello scrivere il codice HTML in un file separato, e caricarlo in un momento successivo quando viene richiesto.
		- un esempio di questo sono i progetti fatti con _VUE_ che utilizzano dei template per generare pagine web.  
- # Link Utili:
	- 