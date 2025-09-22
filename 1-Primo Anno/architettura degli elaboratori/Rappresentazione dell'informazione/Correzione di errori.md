---
tags: []
aliases:
  - distanza di Hamming
  - Bit di parità
data: "`2024-08-31 20:05`"
---
- Ad una parola di _n_ bit si aggiungono _r bit di controllo_ in modo da ottenere una word di n+r bit e in base a tipo di codice scelto cambiano il numero di _r bit_ usati
- ## Distanza di Hamming
	- la distanza di hamming tra due sequenza di bit è il numero di bit per cui queste due sequenze differiscono
	- ES:
		- 001101 e 011100 hanno distanza _2_ perché cambiano solo due bit tra di loro
	- La distanza di Hamming di un codice è la distanza di Hamming fra due word che non hanno subito errori 
		- Come regola generale si usa che:
			- Per rilevare _d_ bit errati è necessario un codice con distanza di Hamming $\geq d+1$ 
			- per correggere _d_ bit errati è necessario un codice  con distanza di Hamming $\geq 2d+1$ 
- ## Bit di parità ^2d37e7
	- un unico bit di controllo che vale 0 se il numero di "1" della sequenza è pari e vale 1 in caso contrario, in questo modo si avrà sempre un numero pari di "1" ovvero quelli della sequenza + quello di controllo.
- ## Codice di Hamming 