---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- i [[Sottospazio vettoriale||sottospazi]] dello [[Spazio vettoriale]] $\mathbb{R}^2$ possono essere solo 3. Preso $U \leq \mathbb{R}^2$ si ha:
		- $U=\underline{0}=(0,0)$
		- $U\ne \underline{0}:\exists!u \in U: u\ne \underline{0}$ ovvero U contiene un solo vettore $u$ e di conseguenza, per la _chiusura del prodotto_, tutti i prodotti di $u$ per uno scalare $\lambda \in \mathbb{R}$ perciò infiniti.
		- $U\ne \underline{0}:\exists u \in U: u\ne \underline{0}$ ovvero che U contiene almeno due vettori $u$ e $v$ da cui è possibile generare, _per la chiusura della somma e del prodotto_, una serie infinita di altri vettori.
- Quindi l'idea è che se c'è un vettore c'è una retta, e se ci sono 2 rette c'è un piano, riassumendo.
	- 1) $U = \underline{0} \rightarrow$ il sottospazio banale.
	- 2) $U = (\lambda_{1}u,\lambda_{2}u,\lambda_{3}u,...)\rightarrow$ una retta passante per l'origine
	- 3)$U=\mathbb{R}^{2}\rightarrow$ l'intero piano cartesiano.
	Per dimostrare il punto 3 basta prendere un qualsiasi punto $p \in \mathbb{R}^2$, tracciare le parallele delle rette fissate da $u$ e $v$ (gli unici vettori di U) e passanti per $p$, e quindi ottenere che il punto $p$ è l somma di un certo $\lambda u$ e $\lambda v$ 
- # Corollario
	- preso lo [[Spazio vettoriale]] $V=\mathbb{R}^{2}=(x,y)|x,y\in \mathbb{R}^{2}$. ne è  sottospazio $S=(x,ax)|x\in \mathbb{R}$ (con "a" fissato), ovvero le rette passanti per le origini sono tutte sottospazi di $\mathbb{R}^{2}$, mentre le altre no.
	- _N.B_: quello che è stato effettuato è il cercare di capire qual è il [[Sottospazio generato]] a partire da certi vettori di $\mathbb{R}^{2}$
	- ## ES:
		- fissati $v_{1}, v_{2} \in \mathbb{R}^{2}$, il più piccolo sottospazio z che li contiene è:
			- $z=\underline{0}\Longleftrightarrow v_{1}=v_{2}=\underline{0}$
			- $z=r \Longleftrightarrow v_{1},v_{2}$ appartengono alla stessa retta $r$ passante per l'origine.
			- $z=\mathbb{R}^{2}$ altrimenti.