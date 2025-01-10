---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Un autovalore è uno scalare $\lambda$ associato ad un [[Autovettore]], ovvero t.c per un'[[Applicazione lineare]] $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{n}$ e un vettore $v\in \mathbb{R}^{n}$ con $v\ne \underline{0}$ avviene che $f(v)=\lambda v$
- # Proposizioni
	- ## Legame con molteplicità
		- ciò riguarda un importante legame tra gli autovalori e la [[molteplicità algebrica]] e [[molteplicità geometrica]], ed è un criterio fondamentale per analizzare la [[Diagonalizzabilità]] di una matrice $A$ 
		- Se $\lambda$ è autovalore di $A$ allora $$1\le m_{g}(\lambda)\le m_{a}(\lambda)$$Ovvero la molteplicità geometrica di $\lambda$ è compresa tra $1$ e la sua molteplicità algebrica
		  _N.B:_ la molteplicità geometrica di un qualunque $\lambda$ non può essere inferiore a 1, perché vorrebbe dire che $dim(V_\lambda)=0$, e ciò non è possibile visto che avendo trovato un autovalore $\lambda$ deve esister almeno un autovettore all'interno dell'[[Autospazio]]
	- ## Autovalore 0
		- Sia $f:\mathbb{R}^{n} \to \mathbb{R}^{n}$ con autovalore $\lambda=0$, allora per definizione si ha che $\exists v\in \mathbb{R}^{n}$ t.c $v\ne \underline{0}$ e $$f(v)=0 v=\underline{0}$$Allora ho che $v\in ker(f)$ ed essendo $v\ne \underline{0}$ devo per forza avere $dim(ker(f))>0$ da cui ho che $f$ non è [[iniettiva]]. E per il [[Determinante#^3334b3||teoremone]] so anche che $f$ non è invertibile.
		- N.B: Questo non significa che c'è una relazione tra [[Diagonalizzabilità]] e invertibilità, e anzi si ha che $$\mathbf{{diagonalizzabile}}\not\implies \mathbf{invertibile}$$e che $$\mathbf{{invertibile}}\not\implies \mathbf{diagonalizzabile}$$ 
- # Calcolare gli autovalori:
	- $$A= \begin{pmatrix}2 & 1 & 0 \\ 1 &3&1\\ 0&1&2\end{pmatrix}$$
	- si calcola prima il [[polinomio caratteristico]] di $A$ $$p_{A}(\lambda)=det(A-\lambda I)$$
	- $$\det[\begin{pmatrix}2 & 1 & 0 \\ 1 &3&1\\ 0&1&2\end{pmatrix}- \lambda \begin{pmatrix}1 &0 &0\\ {0} &1 &0 \\ 0 &0 &1\end{pmatrix}]=$$
	- $$=\det [\begin{pmatrix}2-\lambda & 1 & 0 \\ 1 &3-\lambda&1\\ 0&1&2-\lambda\end{pmatrix}]$$
	- applicando [[Regola di Sarrus|sarrus]] si ha che $$p_{A}(\lambda)=(2-\lambda)(3-\lambda)(2-\lambda)=$$
	- $$= -\lambda^{3}+7\lambda^{2}-14\lambda+8$$
	- si risolve l'equazione $p_{A}(\lambda)=0$ per trovare gli autovalori di $A$ $$-\lambda^{3}+7\lambda^{2}-14\lambda+8=0$$
		- uso il metodo di ruffini scomponendo il polinomio in $(\lambda-1)(-\lambda^{2}+6\lambda-8)=0$ e risolvendo l'equazione $-\lambda^{2}+6\lambda-8=0$ si trova che:
			- $\lambda_{1}=1$ 
			- $\lambda_{2}=4$ 
			- $\lambda_{3}=2$ 
		- questi quindi sono gli _autovalori_ della matrice $A$ 