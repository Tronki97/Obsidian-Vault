---
tags: 
aliases:
  - deterministici
  - DFA
  - dfa
  - costruzione dei sottoinsiemi
  - closure
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
- # Dim:
	- per ogni NFA è possibile costruire da esso un DFA
	- ## Idea:
		- seguire tutti i possibili cammini alternativi dell'NFA e ciò implica che:
			- gli stati dell'DFA costruito sono insiemi degli stati dell'NFA. 
	- ## ES:
		- ![[Pasted image 20241008170611.png]]
		  NFA da trasformare in DFA
		- stato iniziale del DFA: $\{q_{0}\}=A$
			- ![[Pasted image 20241008170701.png]]
			- passando dallo stato $A$ allo stato $B$ ho seguito tutti le transizioni etichettate con $b$ 
			- passando da $B$ a $C$ ho eseguito tutte le transizioni etichettate con $a$ $(q_{0}\to^{a} q_{0} \ \mathbf{e}\ q_{1} \to^{a} q_{2})$
				- $$mossa(B,a)=\bigcup_{q\in B}\delta(q,a)=$$
				- $$\delta(q_{0},a)\cup \delta(q_{1},a)=\{q_{0},q_{2}\}=C$$
	- ## ES 2:  ^f26364
		- ![[Pasted image 20241008171256.png]]
		- lo stato iniziale di questo NFA è $0$ più tutti gli altri stati _raggiungibili con mosse_ $\epsilon$ quindi:
			- $\mathbf{\epsilon-closure}(0)=\{0,1,2,3,7\}$ etichettato come stato $A$  
		- per calcolare gli stati raggiungibili da $A$ leggendo $a$ basta vedere quali stati possono essere raggiunti leggendo $a$ e poi farne la $\mathbf{\epsilon-closure}$:
			- $$\Delta(A,a)=\mathbf{\epsilon-closure}(mossa(A,a))=$$
			- $$=\mathbf{\epsilon-closure}(\bigcup_{q\in A}\delta(q,a))=$$
			- $$=\{4\}=\{4,6,7,1,2,3\}=B$$
		- facendolo anche per tutti gli altri:
			- ![[Pasted image 20241008172031.png]]
		- risulta un DFA ottenuto costruendone i sottoinsiemi:
			- ![[Pasted image 20241008172109.png]]
- # Closure e mosse:
	- Sia $q$ uno stato di un NFA. la $\epsilon-closure$ di $q$ è _l'insieme degli stati raggiungibili da $q$ con solo mosse $\epsilon$_
	- Sia $P$ l'insieme degli stati di un NFA 
		- $$\epsilon-closure(P)=\bigcup_{p\in P} \epsilon-closure(p)$$
			- $$mossa: \mathbb{P}(Q) \times \Sigma \to \mathbb{P}(Q)$$
			- $mossa(P,a)=\bigcup_{p\in P} \delta(p,a)$
	- Quindi risulta che la funzione di transizione del DFA è:
		- $$\Delta(A,b)=\epsilon-closure(mossa(A,b))$$
	- ## Algoritmo per calcolare la closure:
		- ![[Pasted image 20241008172930.png]]
		- ### OSS:
			- usando $\epsilon-closure$ si può definire il linguaggio riconosciuto da un NFA in modo elegante:
				- $$w \in L[N]\iff \exists p \in F : p\in \hat{\delta}(q_{0},w) $$
				- equivalente a:
				- $$ \hat{\delta}(q,xa)=\epsilon-closure(mossa( \hat{\delta}(q,x),a))=$$
				- $$=\epsilon-closure(\bigcup_{p\in \hat{\delta}(q,x)}\delta(p,a))$$
- # Costruzione dei sottoinsiemi: ^f20c1c
	- dato un [[Automi finiti non deterministici||NFA]] $N=(\Sigma, Q,\delta, q_{0}, F)$ 
		- ![[Pasted image 20241008174035.png]]
	- definisco il DFA $M_{N}=(\Sigma, T, \Delta, \epsilon-closure(q_{0}), \scr{F})$
		- dove $R\in \scr{F}$ $\iff \exists q \in R\ |\  q\in F$  
	- Nel caso pessimo $T=\mathbf{P(Q)}$in cui il DFA $M_{N}$ costruito a partire dall'NFA $N$ ha un numero di stati pari a $2^{n}|\ n=|Q|$ 
	- $T$ è molto più piccolo di  $\mathbf{P(Q)}$
- # Pros & Cons:
	- non si bloccano mai 
	- in tempo $O(n)$ dove $n$ è la lunghezza di $w$ so se la stringa è stata accettata o meno.
	- _sono più difficili da definire_ 
- # Link Utili:
	- https://virtuale.unibo.it/pluginfile.php/2200368/mod_resource/content/0/Lez06-Gorrieri.pdf dalla pagina 20 in poi. 