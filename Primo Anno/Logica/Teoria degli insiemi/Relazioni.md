Def:
	Una relazione tra A e B è un qualsiasi sottoinsieme del loro prodotto cartesiano 

Elementi:
	Sia R una relazione. $aRb \Leftrightarrow \langle a,b\rangle \in R$ 

Teorema:
	$$(R\subseteq A\times \emptyset \ \vee \ R\subseteq \emptyset\times A)\Rightarrow R=\emptyset$$Relazione vuota. Non posso formare delle coppie prendendo uno dei due elementi dell'insieme vuoto, perché tale insieme è vuoto. ^3341fb

Esempio:
	La relazione $\leq$ sull'insieme {0, 1, 2} è definita:$$\leq\  = \{\langle 0,0 \rangle, \langle0,1 \rangle, \langle 0,2\rangle, \langle 1,1\rangle, \langle 1,2\rangle, \langle 2,2\rangle,\}$$
	e $0 \leq 2$ è solo una notazione per $\langle 0,2\rangle \in \ \leq$ ^eb0304


##### Proprietà

^0b9b0e

Sia $R\subseteq A\times A$ essa ha la proprietà:
- Riflessiva: se $\forall X \in A, XRX$
- Simmetrica: se $\forall X, Y \in A, (XRY \Rightarrow YRX)$
- Transitiva: se $\forall X,Y,Z \in A,(XRY \wedge YRZ \Rightarrow XRZ)$ 
ES: 
- = gode di tutte e tre le proprietà
- < sui naturali è solo transitiva 
- $\leq$ sui naturali è transitiva e riflessiva
- $\ne$ è solo simmetrica 

##### Tipi di relazioni
- Relazioni di ordinamento strette: 
	- $R\subseteq A\times A$ è di ordine stretto sse R è transitiva e non riflessiva.
	- ES:
		- $=, \ne ,\leq$ non sono di ordine stretto
		- < lo è per i numeri naturali 
- Relazioni di ordinamento lasche:
	- $R\subseteq A\times A$ è di ordine (lasco) sse
		-  R è transitiva e riflessiva
		- R è antisimmetrica $(\forall X,Y \in A,(XRX \ \wedge \ YRX \Rightarrow X=Y))$.
	- ES:
		- $=, \leq ,\subseteq$ sono di ordinamento 
- Relazioni di equivalenza
	- $R\subseteq A\times A$ è di equivalenza sse R gode di tutte e tre le [[Relazioni#^0b9b0e||proprietà]] 
	- ES:
		- = è una relazione di equivalenza 
	- NB: 
		- essa assomiglia ad un uguaglianza usata per confrontare dei soggetti senza tenere conto di dettagli non rilevanti.