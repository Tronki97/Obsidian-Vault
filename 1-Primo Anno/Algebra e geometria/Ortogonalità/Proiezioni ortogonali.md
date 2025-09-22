---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Siano $u,v \in \mathbb{R}^{n}$, allora la _proiezione ortogonale_ di $v$ su $u$ è data da $$proj_{u}(v)=\frac{<v,u>}{<u,v>}u=<v,u>{\frac{u}{||u||^{2}}}$$Ovvero si definisce come il [[Prodotto scalare Euclideo||prodotto scalare]] tra $v$ e $u$ diviso la [[Norma euclidea||norma]] al quadrato di $u$, il tutto per $u$
- # Interpretazione
	- Geometricamente parlando, la proiezione ortogonale è facile da capire. Considero due vettori $u,v \in \mathbb{R}^{2}$; definisco la _proiezione ortogonale di $v$ su $u$ quel vettore che punta verso $u$ e che ha magnitudo $v$_. 
	- Si chiarisce tutto usando le _coordinate polari_ dei vettori, sfruttando il fatto che si è in $\mathbb{R}^{2}$. Infatti se rappresento $<v,u>$ come $||v||\cdot ||u||\cdot cos \theta$ e $<u,u>$ come $||u||^{2}$ ottengo$$proj_{u}(v)=||v||\cdot ||u||\cdot cos \theta \cdot \frac{u}{||u||}=||v||cos \theta\cdot \frac{u}{||u||}$$Ovvero esattamente il _vettore in direzione_ $u$ (la direzione è data da $\frac{u}{||u||}$), e _di magnitudo_ $||v||cos \theta$, ossia la _lunghezza di $v$ per la sua inclinazione rispetto a $u$_
	- la parte più importante però non è il vettore $proj_{u}(v)$, ma $v-proj_{u}(v)$ 
	- Questo vettore, di fatto, è [[1-Primo Anno/Algebra e geometria/Ortogonalità/Ortogonalità|ortogonale]] _a $u$ e misura la distanza dalla punta di v_. Ed è una [[Combinazione lineare]] di $u$ e $v$. Questo è fondamentale per l'applicazione dell'[[Algoritmo di Gram-Schmidt]].
	 
- # Dimostrazione di ortogonalità
	- Dimostro che vale in generale che $v-proj_{u}(v)\bot u$ ovvero $$<v-proj_{u}(v), u>=0\ \ \ \forall u,v\in \mathbb{R}^{n}$$Sviluppo $v-proj_{u}(v)$ ottenendo$$v-proj_{u}(v)=v-\frac{<v,u>}{<u,v>}u$$Passo di nuovo al prodotto scalare:$$<v-\frac{<v,u>}{<u,v>}u,u>=0$$Per le sue proprietà diventa:$$<v,u>-<\frac{<v,u>}{<u,v>}u,u>=0$$E procedendo $$<v,u>-\frac{<v,u>}{<u,v>}<u,u>=0$$Ed infine $$<v,u>-<v,u>=0$$
	- Qed.
- # Proiezione ortogonale su un sottospazio:
	- La proiezione ortogonale di $v$ su $W$, denotata $proj_{W}(v)$, è il vettore $p\in W$ che minimizza la distanza tra $v$ e $p$, ed è dato dalla combinazione lineare dei vettori che generano $W$.
	- Se $p=proj_{W}(v)$ allora $p$ si può scrivere come:
		- $$p=\lambda_{1}v_{1}+\lambda_{2}v_{2}+...+\lambda_{n}v_{n}$$
		- Dove $v_{1},...,v_{n}$ sono una base di $W$ e $\lambda_{1},...,\lambda_{n}$ sono i coefficienti della combinazione lineare.
	- La proiezione ortogonale deve soddisfare la condizione che il vettore $v−p$  sia ortogonale a tutti i vettori in $W$. Quindi, dobbiamo avere:
		- $$<v-p,v_{i}>=0\ \ \ \forall i=1,...,n$$
			- equivalente a:
		- $$<v,v_{i}>=<p,v_{i}> \forall i=1,...,n$$
	- ## Procedimento:
		- calcolo i [[Prodotto scalare Euclideo||prodotti scalari]]: $<v,v_{i}>$ e $<p,v_{i}>$ per ogni $i$.
		- calcolo i prodotti scalari tra i vettori di $W$:
			- $$<v_{i},v_{j}> \forall i,j=1,...,n$$
		- risolvo il sistema di equazioni lineari ottenuto:
			- $$\begin{cases}<v,v_{1}>=\lambda_{1}<v_{1},v_{1}>+...+\lambda_{n}<v_{1},v_{n}>\\ \vdots \\ <v,v_{n}>=\lambda_{1}<v_{n},v_{1}>+...+\lambda_{n}<v_{n},v_{n}>\end{cases}$$
		- Trovati i coefficienti $\lambda$ posso calcolare la soluzione:
			- $$p= \lambda_{1}v_{1}+...+\lambda_{n}v_{n}$$