---
tags:
  - LdP
aliases:
data: "`2024-09-24 11:10`"
---
- # Motivazioni:
	- siccome la memoria è imitata non è possibile rappresentare in memoria l'interezza di un linguaggio serve quindi utilizzare diverse tecniche per rappresentarli.
		- 1) $\mathbb{N}=\{ 0,1,2,...\}$ non memorizzabile perché infinito 
			- posso trovare una rappresentazione implicita in forma finita:
			- $$\frac{}{o\in \mathbb{N}} \ \ \ \ \frac{x\in \mathbb{N}}{S(x)in \mathbb{N}}$$  
			- Genero $\mathbb{N}$ come più piccolo insieme generato dall'assioma e dalla regola:
				- $\mathbb{N}=\{0, S(O), S(S(0)),...\}$ 
		- 2) $\mathbb{P}=$ numeri pari
			- $fun \ \ pari(x:\mathbf{int}):bool$
			- $pari:= (x\ mod \ 2=0)$
- ## Metodi:
	- ### Generativo/Sintetico:
		- ___linguaggio___: insieme finito generato dalla struttura [[Grammatica]] 
	- #### Riconoscitivo/analitico:
		- ___linguaggio___: insieme riconosciuto da un _automa_
	- _non per tutti i linguaggi valgono questi metodi_