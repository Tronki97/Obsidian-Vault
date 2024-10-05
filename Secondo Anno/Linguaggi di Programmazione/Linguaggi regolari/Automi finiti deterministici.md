---
tags:
  - TODO
aliases:
  - deterministici
  - DFA
  - dfa
data: "`2024-10-05 20:34`"
---
- # Def:
	- un DFA è una quintupla $(\Sigma, Q,\delta, q_{0}, F)$ dove $\Sigma, Q, q_{0}, F$ sono definiti come per un [[Automi finiti non deterministici||NFA]] mentre la funzione $\delta$:
		- $$\delta:Q \times \Sigma \to Q $$
			- $(\delta(q, \sigma)=q')$ 
- # Oss:
	- un DFA è un tipo di NFA che:
		- $\forall q \in Q\ |\ \delta(q,\epsilon)=\emptyset$ (non ci sono transizioni $\epsilon$) 
		- $\forall \sigma\in \Sigma, \forall q \in Q,\  \exists q' \in Q: \delta(q,\sigma)=\{q'\}$ 
			- ovvero l'insieme delle mosse possibili è sempre un singoletto.     
- # Pros & Cons:
	- non si bloccano mai 
	- in tempo $O(n)$ dove $n$ è la lunghezza di $w$ so se la stringa è stata accettata o meno.
	- _sono più difficili da definire_ 
- # Link Utili:
	- https://virtuale.unibo.it/pluginfile.php/2200368/mod_resource/content/0/Lez06-Gorrieri.pdf dalla pagina 20 in poi. 