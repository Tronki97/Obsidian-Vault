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