---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- sia $\lambda\in \mathbb{R}$ un [[Autovalore]] di $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{n}$ [[Applicazione lineare]], allora 
		- $$V_{\lambda}=v\in \mathbb{R}^{n}|f(v)=\lambda v$$
	- si dice _autospazio_ relativo all'autovalore $\lambda$. In pratica è l'insieme degli [[Autovettore||autovettori]] che condividono lo stesso autovalore.
- # Proposizioni:
	- $V_{\lambda}\le \mathbb{R}^{n}$
		- si ha che $V_{\lambda}$ è [[Sottospazio vettoriale||sottospazio]] di $\mathbb{R}^{n}$ perché è un [[Kernel||nucleo]] infatti
			- $$\begin{array}\  V_{\lambda}=v \in \mathbb{R}^{n}|f(v)=\lambda v=\\ \\  = v\in \mathbb{R}^{n}|Av-\lambda v=\underline{0}= \\ \\ =v\in \mathbb{R}^{n}|(A-\lambda I)v=\underline{0}= \\ \\ v\in \mathbb{R}^{n}|v\in ker(A-\lambda I)=ker(A-\lambda I)\end{array} $$