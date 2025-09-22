---
tags: []
aliases: 
data: "`2024-10-15 15:52`"
---
- # Def:
	- per scrivere in modo più elegante la soluzione al [[Problema dei minimi quadrati]] come fosse la soluzione di un sistema lineare
	- $A^{+}=V \Sigma^{+}U^{T}$ $\frac{1}{\sigma_{1}}$
		- $$\Sigma^{+}=\begin{pmatrix}\frac{1}{\sigma_{1}}& 0& 0\\ 0&\frac{1}{\sigma_{2}}&0\\ \cdots&\cdots&\cdots\\0&0 & \frac{1}{\sigma_{n}}\\&0&\end{pmatrix}$$
	- ### Proprietà:
		- $AA^{+}A=A$
		- $A^{+}AA^{+}=A^{+}$
		- $(AA^{+})^{T}=AA^{+}$
		- $(A^{+}A)^{T}=A^{+}A$
	- e appunto la soluzione si può scrivere come:
		- $x=A^{-1}b$
		- $x^{*}=V \Sigma^{*}U^{T}b \implies x^{*}=A^{+}b$ 
	- inoltre il [[Risoluzione di un sistema lineare#^47956e||numero di condizione]] di una matrice $A\in \mathbb{R}^{m \times n}$ si può scrivere usando la pseudoinversa come:
		- $$K(A)=||A||||A^{+}||$$
	- e il numero di condizionamento spettrale come:
		- $$K(A)_{2} =||A||_{2}||A^{+}||_{2}=\frac{\sigma_{1}}{\sigma_{n}}$$
- # Link Utili:
	- 