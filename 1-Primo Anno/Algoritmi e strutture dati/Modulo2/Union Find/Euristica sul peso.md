---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- ### Funzionamento
	- memorizzare nella radice il numero di elementi dell'insieme; la dimensione può essere mantenuta con costo costante 
		- appendere l'insieme con meno elementi a quello con più elementi   
		- ![[unionBySize.png]]
		- #### OSS:
			- ogni volta che una foglia acquista un nuovo padre farà parte di un insieme con almeno il doppio di elementi rispetto a quello in cui era prima.
			- ogni foglia cambia il proprio padre al più $log  (n)$ di volte 
		- #### OSS2:
			- nel caso pessimo durante una esecuzione di `union`, fino a n/2 elementi possono cambiare padre 