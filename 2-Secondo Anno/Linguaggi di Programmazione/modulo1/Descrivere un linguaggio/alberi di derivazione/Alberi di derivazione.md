---
tags: []
---

- ## Prop:
	- Considerando la [[Grammatiche]] $$S\to a\ |\ b\ |\ c\ |\ S+S\ |\ S*S$$
	-  e la derivazione:$$S \Rightarrow S*S \Rightarrow S+S*S \Rightarrow a+S*S \Rightarrow a+b*S \Rightarrow a+b * c$$
		- ___Leftmost___: ad ogni passo si riscrive il non terminale più a sx   ^308569
		- ad ognuno di questi passi si associa un piano dell'_albero di derivazione:
			-  ![[Pasted image 20240924183128.png]]
		- Se decidessi di fare una derivazione diversa andando a riscrivere il non terminale più a dx l'_albero non cambierebbe_
	- ### OSS:
		- 1) l'albero "riassume" tante derivazioni diverse ma tutte equivalenti.
		- 2) L'albero fornisce informazioni semantiche: "_quali operandi per quali operazioni_" ^09f5c6 ^c6e9bf
			- se leggo le [[Alberi e Alberi binari#^d80a92||foglie]] viene come risultato l'operazione con gli adeguati operandi ovvero :
				- ![[Pasted image 20240924183709.png|300]]
				  E questo si chiama _Albero sintattico_.
- ## Def:
	- anche detto albero di Parsing
	- è un albero ordinato etichettato con simboli $NT \cup \{\epsilon\}\cup T$ 
	- la radice è etichettata con $S$
	- ogni nodo interno è un simbolo $NT$
	- se il nodo $n$
		- ha etichetta $A\in NT$ e i figli sono nell'ordine $m_{1},...m_{k}$ con etichetta $x_{1},...,x_{k}$ allora 
			- $A\to x_{1},...,x_{k}$ è una regola di $R$