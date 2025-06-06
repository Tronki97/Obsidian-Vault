---
tags: 
aliases:
  - simile
data: "`2024-08-31 20:05`"
---
- # Argomento:
	- Sia $f:\mathbb{R}^{n} \to \mathbb{R}^{n}$ un endomorfismo simmetrico. allora esiste una [[Base]] di $\mathbb{R}^{n}$ costituita da [[Autovettore|autovettori]] di $f$ in particolare:
		- 1) un endomorfismo simmetrico è sempre [[Diagonalizzabilità||diagonalizzabile]]
		- 2)se $\lambda_{1}\ne \lambda_{2}$ allora $V_{\lambda_{1}}\bot V_{\lambda_{2}}$
		- 3) se $M_{c}^{c}(f)=A$ allora esiste una matrice [[Primo Anno/Analisi/modulo2/Ortogonalità|ortogonale]] $P$ e una matrice diagonale $D$ t.c$$P^{-1}AP=P^{T}AP=D$$Cioè $A$ è _ortogonalmente simile_ ad una matrice diagonale
	- la matrice $D$ simile ad $A$ è la matrice diagonale dei [[Autovalore|autovalori]] di $A$. La matrice $P$ è la matrice ortogonale i cui vettori colonna sono gli autovettori di $A$.
	- ## ES:
		- sia $A=\begin{pmatrix}1&1&1\\1&1&1\\1&1&1\end{pmatrix}$ devo determinare una matrice ortogonale $P$ t.c $P^{T}AP=D$(diagonale); $P^{\bot}\implies P^{-1}=P^{T}$
		- _$A$ simmetrica $\implies$ $A$ è diagonalizzabile_
		- Mi serve una [[Base ortonormale]] costituita da [[Autovettore||autovettori]]:
			- trovo una base dei singoli [[Autospazio||autospazi]] 
			- ortogonalizzo ogni base con [[Algoritmo di Gram-Schmidt||Gram-Schmidt]] 
			- unisco le basi trovate e ottengo una base ortonormale $\beta$ di autovettori $I_{\beta c}^{-1}AI_{\beta c}=D$   
			- _N.B_: $I_{\beta c}^{-1}=I_{\beta c}^{T}$ perché la base è ortonormale 
		- Ora calcolo il [[polinomio caratteristico]] di $A$ $$p_{A}(x)=det(A-xI)=det(\begin{pmatrix}1-x&1&1\\1&1-x&1\\1&1&1-x\end{pmatrix})$$Che risolto usando [[Regola di Sarrus||Sarrus]] mi risulta $$(1-x)^{3}+1+1-[(1-x+1-x+1-x)]=$$$$=3x^{2}-x^{3}=x^{2}(3-x)=-x^{2}(-3+x)$$calcolo la [[molteplicità algebrica]] con gli autovalori:
			- $\lambda_{1}=0$  $m_{a}(0)=2$
			- $\lambda_{1}=3$  $m_{a}(3)=1$
		- Procedo calcolando l'[[Autospazio]] relativo all'autovalore $\lambda_{1}=0$$$V_{0}=ker(A-0I)=ker(A)$$$$A \underline{x}=\underline{0}\to \begin{pmatrix}1&1&1|&0\\1&1&1|&0\\1&1&1|&0\end{pmatrix}$$Risolta usando [[Algoritmo di Gauss||Gauss]] mi rimane l'equazione $$x_{1}+x_{2}+x_{3}=0$$ le soluzioni dipendono da $3-1=2$ parametri $$x_{1}=-x_{2}-x_{3}$$ Con soluzioni $$(-x_{2}-x_{3},x_{2},x_{3})|x_{2},x_{3}\in \mathbb{R}$$ E delle basi di $V_{0}$ sono 
			- $v_{1}=(-1,1,0)|x_{2}=1,x_{3}=0$ 
			- $v_{2}=(-1,0,1)|x_{2}=0,x_{3}=1$ 
		- Ora calcolo l'altro autospazio (quello relativo all'autovalore $\lambda_2=3$)$$V_{3}=ker(A-3I)=ker\begin{pmatrix}-2 &1&1\\1&-2&1\\1&1&-2\end{pmatrix}$$Lo risolvo con Gauss e mi ritrovo col sistema $$\begin{cases}-2x_{1}+x_{2}+x_{3}=0\\-x_{2}+x_{3}=0\end{cases}$$che risulta in $$(x_{3},x_{3},x_{3})|x_{3}\in \mathbb{R}$$Quindi l'autospazio $V_{3}$ è generato dal vettore $v_{3}=(1,1,1)$ quindi $$V_{3}=\langle{(1,1,1)}\rangle$$
		- La base di autovettori $\beta'=\{v_{1},v_{2},v_{3}\}$
		- I vettori di uno stesso autospazio potrebbero non essere ortogonali. Uso _G.S_$$<v_{1},v_{2}>=1+0+0=1$$Quindi risulta che $v_{1}\not \bot v_{2}$
		- Trovo la base ortogonale usando Gram-Schmidt 
			- $u_{1}=v_{1}$
			- $$u_{2}=v_{2}-proj_{u_{1}}(v_{2})=(-1,0,1)-\frac{<v_{2},u_{1}>}{<u_{1},u_{1}>}u_{1}=$$$$=(-1,0,1)-\frac{1}{1+1}(-1,1,0)=\left( -\frac{1}{2 },-\frac{1}{2},1 \right)$$
			- Infine risulta che$$\{(-1,1,0),\left( -\frac{1}{2 },-\frac{1}{2},1 \right),(1,1,1)\}$$è base ortogonale di autovettori.
			- $||v_{1}||=\sqrt{(-1)^{2}+1+0}=\sqrt{2}$
			- $||v_{2}||=\sqrt{\frac{1}{4}+\frac{1}{4}+1}=\frac{\sqrt{6}}{2}$
			- $||v_{3}||=\sqrt{3}$
			- La base $\beta$ risulta quindi $$\beta=\left\{ \left( -\frac{1}{\sqrt2},\frac{1}{\sqrt2},0 \right),\left( -\frac{1}{\sqrt6 },-\frac{1}{\sqrt6} , \frac{2}{\sqrt6} \right),\left( \frac{1}{\sqrt3},\frac{1}{\sqrt3},\frac{1}{\sqrt3} \right) \right\}$$
			- La matrice $P=I_{\beta c}=\begin{pmatrix}-\frac{1}{\sqrt2}& -\frac{1}{\sqrt6 }&\frac{1}{\sqrt3}\\\frac{1}{\sqrt2}&-\frac{1}{\sqrt6 }&\frac{1}{\sqrt3}\\0&\frac{2}{\sqrt6}&\frac{1}{\sqrt3}\end{pmatrix}$ 
			- $D=\begin{pmatrix}0&0&0\\0&0&0\\0&0&3\end{pmatrix}$ 
  