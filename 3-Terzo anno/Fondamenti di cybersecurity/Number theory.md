---
tags:
  - TODO
aliases:
data: "`2026-03-13 10:58`"
---
- # teorema di Fermat:
	- sia $p$ un numero primo e $x$ in intero positivo non divisibile per $p$
		- $$\forall x \in \mathbb{Z}_{p}^{*}: x^{p-1}=1 \ in \ \mathbb{Z}_{p}$$
- # Generare numeri primi grandi:
	- per esempio $p$ di lunghezza $1024$ bit 
	- si sceglie un intero random $p\in[1^{1024}, 2^{1025}-1 ]$
	- si controlla se $2^{p-1}=1 \ in\ \mathbb{Z}_{p}$ (questo è il _test della primalità di Fermat_)
		- se risulta rispettata si da in output $p$ altrimenti di genera di nuovo $p$  
- # Totiente di Eulero:
	- $\phi(N)$ numero di interi positivi minori di $N$ primi rispetti ad $N$ 
		- $\phi(12)=|\{1,5,7,11\}|=4$
		- $\phi(p)$ con $p$ primo da come risultato $p-1$ 
			- $\phi(37)=36$
	- suppongo di avere due primi $q,p$ con $p\ne q$ $\phi(pq)=\phi(p)*\phi(q)=(p-1)(q-1)$
	- 
- # Link Utili:
	- 