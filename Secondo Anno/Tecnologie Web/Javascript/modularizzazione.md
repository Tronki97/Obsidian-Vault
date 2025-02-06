---
tags: 
aliases:
  - moduli
data: "`2024-12-02 16:51`"
---
- # Def:
	- spezzo il codice di un programma in frammenti indipendenti e intercambiabili: _separation of concern_
	- richiede una corretta decomposizione del problema, un’interfaccia alle funzioni chiara e precisa.
	- ogni modulo ha uno spazio locale separato dagli altri: _incapsulamento_ 
	- certe funzioni vengono caricate soltanto quando vengono richieste: _load on demand_ 
	- il numero dei file è uguale al numero dei moduli che mi servono, 
	- ogni modulo ha uno spazio interno per i dati, che contiene variabili interne private oppure esportabili.
- # ES moduli:
	- ## 1:
		- ogni modula usa 2 istruzioni `import` e `export`
		- ![[Pasted image 20250206165207.png]]
		- ![[Pasted image 20250206165217.png]]
	- ## 2:
		- se voglio esportare solo un nome (oggetto, variabile, funzione) uso il `export default`:
			- ![[Pasted image 20250206165358.png]]
			- ![[Pasted image 20250206165413.png]]
- # Link Utili:
	- 