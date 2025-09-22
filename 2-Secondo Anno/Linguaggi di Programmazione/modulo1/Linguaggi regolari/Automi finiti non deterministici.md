---
tags: 
aliases:
  - NFA
  - nfa
  - nondeterministico
data: "`2024-10-05 20:09`"
---
- # Def:
	- un automa finito nondeterministico (_NFA_) è una quintupla:$$(\Sigma, Q,\delta, q_{0}, F)$$
		- $\Sigma$ è un [[Lessico e frasi di un linguaggio#^de2f85||alfabeto]] finito di simboli in input
		- $Q$ è un insieme finito di stati.
		- $q_{0}\in Q$ è lo stato iniziale
		- $F \subseteq Q$ è l'insieme degli stati finali.
		- $\delta$ è la funzione di transizione del tipo:
			- $\delta: Q \times (\Sigma\cup \{\epsilon\})\to P(Q)=$ insieme delle parti di Q 
- # ES:
	- $\Sigma=\{a,b\}$     $Q=\{q_{0},q_{1},q_{2}\}$     $q_{0}$ iniziale     $F=\{q_{2}\}$
		- ![[Pasted image 20241005201619.png]]Che rappresentato in NFA è:
			- ![[Pasted image 20241005201650.png]]
- # Pros & Cons:
	- è facile costruirli 
	- non sono efficienti perché accettare una stringa $w$ comporta cercare un cammino su un grafo con tante potenziali strade alternative 
- # Link Utili:
	- 