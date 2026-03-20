---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- $A\in M_{n}(\mathbb{R})$ è ortogonale se $A\cdot A^{T}=I$ ovvero 
		- $$A^{T}=A^{-1}$$
- # Proposizione:
	- sia $A\in M_{n}(\mathbb{R})$ sono equivalenti:
		- 1) $<A \underline{x}, A \underline{x}>=<\underline{x},\underline{y}>$   $\forall \underline{x},\underline{y}\in \mathbb{R}^{n}$
		- 2)$<A \underline{x}, A \underline{x}>=<\underline{x},\underline{x}>$   $\forall \underline{x}\in \mathbb{R}^{n}$
		- 3) $A\cdot A^{T}=I \iff A^{T}=A^{-1}$
		- 4) le colonne-righe di $A$ sono una [[Base ortonormale]] di $\mathbb{R}^{n}$ 
	- ## Dimostrazione:
		- dimostro che $3\iff 4$ 
			- Sia $A=\begin{pmatrix}c_{1}&\cdots&c_{n}\\ \\\\\\\end{pmatrix}$ dove $c$ sono le colonne 
			- $$\begin{array} \ AA^{T}=I\iff A^{T}A=I\iff \\ \\ \iff \begin{pmatrix}c_{1}&&&&\\c_{2}\\\vdots\\c_{n}\end{pmatrix}\cdot \begin{pmatrix}c_{1}&\cdots&c_{n}\\ \\\\\\\end{pmatrix}=I \end{array} $$
			- $\iff$ l'elemento $b_{ij}$ di $A^{T}A=B$ è $\delta^{B}_{ij}=\begin{cases}0\ \ \  \ \ i\ne j\\1\ \ \ \ \ i=j\end{cases}$ 
			- $b_{ij}=<c_{i},c_{j}>$ dove $c_{i}$ è la riga $i$ -esima di $A^{T}$ mentre $c_{j}$ è la colonna $j$ -esima di $A$ Quindi  $AA^{T}=I \iff$ le colonne d $c_{i}$ sono ortonormali. 
				- $b_{11}=1 \iff <c_{1},c_{1}>=1$ $c_{1}$ ha lunghezza 1
				- $b_{12}=<c_{1},c_{2}>=0$  $c_{1}\bot c_{2}$
				- $b_{13}=<c_{1},c_{3}>=0$  $c_{1}\bot c_{3}$
	- Sia $f:\mathbb{R}^{n} \to \mathbb{R}^{n}$ endomorfismo e sia $A=M_{c}^{c}(f)$ allora $f$ è ortogonale $\iff$ $A$ è ortogonale.