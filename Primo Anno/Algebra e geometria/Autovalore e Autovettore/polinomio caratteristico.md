---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Sia $A\in M_{n}(\mathbb{R})$ una [[Matrici||matrice]] quadrata, allora il suo _polinomio caratteristico_ è $$p_{A}(x)=det(A-xI)$$Ovvero il [[Determinante]] della matrice ottenuta sottraendo da $A$ [[Matrice identità||l'identità]] moltiplicata per $x$
- # Importanza
	- Questo è uno strumento fondamentale per la ricerca di [[Autovalore]] e [[Autovettore]] di un'[[Applicazione lineare]]
- # Proposizioni:
	- ## Autovalori
		- Sia $A\in M_{n}(\mathbb{R})$, allora $\lambda \in \mathbb{R}$ è un autovalore di $A\iff \lambda$ è uno zero del polinomio caratteristico, ovvero $$det(A-xI)=0$$
		- ### Dimostrazione 
			- $\implies$)
				- suppongo che $\lambda$ sia autovalore di $A$ allora $Ax=\lambda x$per un qualche $x\in \mathbb{R}^{n}$ e $x\ne \underline{0}$, ovvero $Ax -\lambda x=\underline{0}$ quindi $(A-\lambda I)x=\underline{0}$. Allora si ha che $x\in ker(A-\lambda I)$, ed essendo $x\ne \underline{0}$ significa che $dim(ker(A-\lambda I))>0$ perciò non è [[iniettiva]], e quindi $det(A-\lambda I)=0$
			- $\Longleftarrow$)
				- suppongo che $det(A-xI)=0$ allora significa che $A-\lambda I$ non è [[iniettiva]], per cui $$\exists x\in ker(A-\lambda I):x\ne \underline{0}$$Quindi vale $$(A-\lambda I)x=\underline{0}$$Ovvero $$Ax-\lambda Ix=Ax-\lambda x=\underline{0}$$Quindi $$Ax=\lambda x$$Ovvero la definizione di autovalore per $\lambda$ 