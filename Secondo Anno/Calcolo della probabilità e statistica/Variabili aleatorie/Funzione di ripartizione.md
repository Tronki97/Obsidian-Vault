---
tags: 
aliases:
  - fdr
  - f.d.r
data: "`2025-03-21 19:07`"
---
- # # Funzione di ripartizione:
	- $\mathbb{P}_{X}$ contiene tutte le informazioni di $X$, ma è una funzione di insiemi 
	- ## OSS:
		- $B\subset \mathbb{R}$
		- Conoscere $\mathbb{P}_{X}(B)\ \ \forall B\subset \mathbb{R} \iff \mathbb{P}_{X}(I)\ \ \forall I$
			- $I$ intervallo reale.
		- Definita come : $F_{X}: \mathbb{R}\to [0,1]$
			- $$x \to F_{X}(x):=\mathbb{P}_{X}((- \infty, x]) = \mathbb{P}(X\le x)$$
	- ## Variabili costanti:
		- $\mathbb{P}_{X}(B)=\delta_{0}(B)$
		- $$F_{X}(x)=\mathbb{P}_{X}((-\infty,x])=\delta_{0}((-\infty,x])=\begin{cases} 1&x\ge a\\0&x<0 \end{cases}$$
		- ![[Pasted image 20250527195908.png|500]]
	- ## Lemma:
		- “$A_{n}\uparrow A$": $$A_{n}\subset A_{n+1}, \ \ \bigcup_{n=1}^{\infty}A_{n}=A \implies \lim_{n\to \infty}\mathbb{P}(A_{n})=\mathbb{P}(A)$$
		- “$A_{n}\downarrow A$": $$A_{n}\supset A_{n+1}, \ \ \bigcap_{n=1}^{\infty}A_{n}=A \implies \lim_{n\to \infty}\mathbb{P}(A_{n})=\mathbb{P}(A)$$ 
	- ## Teorema:
		- $(\Omega, \mathbb{P})$ spazio di probabilità
		1) $F_{X}$ è monotona crescente
		2) $F_{X}$ è continua a destra.: ($\lim_{y\to x^{+}} F_{X}(y)=F_{X}(x)\ \ \ \forall x\in \mathbb{R}$)
		3) $$\lim_{x\to \infty}F_{X}(x)=1$$
		 4) $$\lim_{x\to -\infty}F_{X}(x)=0$$
		- Vale anche il viceversa: se $G: \mathbb{R}\to [0,1]$ verifica i 4 punti $\implies \exists(\Omega,\mathbb{P})$ 
	- ## Dim:
		1) prendo due insiemi $(-\infty,x)\subset (-\infty,y) \implies \mathbb{P_{X}}((-\infty, x])\le \mathbb{P_{X}}((-\infty, y])$
			- Ciò vale perché $\mathbb{P}_{X}(.)$ verifica la monotonia perché è una probabilità.
		 2) $3) 4)$ serve la stabilità della probabilità per limiti monotoni: 
		 3) $$\lim_{x\to \infty}F_{X}(x)=1\iff \lim_{x\to \infty}\mathbb{P}_{X}((-\infty,x])=\mathbb{P}_{X}(\mathbb{R})$$
			- Applico il lemma e cerco $(B_{n})_{n}: B_{n}\uparrow \mathbb{R}$ ovvero $B_{n}\subset B_{n+1}, \ \ \bigcup_{n=1}^{\infty}B_{n}=\mathbb{R}$
			- Scelgo quindi $B_{n}$ come $(-\infty, n], \ n\in \mathbb{N}$ 
				- $$\lim_{n\to \infty}\mathbb{P}_{X}((-\infty,n])= \lim_{n\to \infty}\mathbb{P}_{X}(B_{n})=\mathbb{P}_{X}(\mathbb{R})=1$$
			- Concludo osservando che $F_{X}(.)$ è monotona crescente e quindi ammette limite unico.
			- Quindi:
				- $$\lim_{x\to \infty}F_{X}(x)=1$$
- # Link Utili:
	- 