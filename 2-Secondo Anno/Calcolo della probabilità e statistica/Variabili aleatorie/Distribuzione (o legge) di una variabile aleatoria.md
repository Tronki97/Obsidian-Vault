---
tags: 
aliases:
  - legge di probabilità
  - distribuzione di
data: "`2025-03-21 19:04`"
---
- # Definizione:
	- $(\Omega, \mathbb{P})$ spazio di probabilità, $X: \Omega\to \mathbb{R}$ V.A
	- Si dice legge di probabilità di $X$ la probabilità:
		- $\mathbb{P}_{X}:P(\mathbb{R})\to[0,1]$
		-        $B\longrightarrow \mathbb{P}_{X}(B):=\mathbb{P}(X\in B)$
	- Si scrive:
		- $$X\sim \mathbb{P}_{X}$$
			- Significa che $X$ ha la legge $\mathbb{P}_{X}$
	- ### OSS:
		- Conoscere $\mathbb{P}_{X}(B ),\ \ \forall B \subset \mathbb{R}$ equivale a conoscere:
			- $$\mathbb{P}_{X}((- \infty,x]),\ \ x\in \mathbb{R}$$
		- Si dimostra che la legge $\mathbb{P}_{X}$ di una [[Variabili aleatorie|V.A]] $X$ è caratterizzabile dalla funzione $F_{X}(x):=\mathbb{P}_{X}((- \infty, x])$
		- Definita come : $F_{X}: \mathbb{R}\to [0,1]$
		- $$x \to F_{X}(x):=\mathbb{P}_{X}((- \infty, x]) = \mathbb{P}(X\le x)$$
- # Link Utili:
	- 