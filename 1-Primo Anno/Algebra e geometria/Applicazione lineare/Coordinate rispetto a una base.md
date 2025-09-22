---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- Sia $\beta = v_1,...,v_n$ una [[Base]] ordinata di uno [[Spazio vettoriale]] V, e sia $v \in V$ allora esistono unici $\lambda_{1},...,\lambda_{n} \in \mathbb{R}$ tali che:$$v= \lambda_1 v_1+...+\lambda_n v_n$$ Questi scalari sono definiti come: _coordinate di $v$ rispetto alla base $\beta$_ e si indicano così:$$v_{\beta}=\lambda_{1},...,\lambda_{n}$$
  N.B: il teorema ci assicura che presa una base ordinata esistano sempre coordinate di un vettore appartenente a V. Per cui se la soluzione di un sistema per trovare i valori di $\lambda$ che determinino la [[Combinazione lineare]] di un certo vettore ci viene impossibile o con infinite soluzioni, siamo sicuri di star sbagliando.
- ## ES:
	- presa la base canonica $e= (1,0),(0,1)$ di $\mathbb{R}^{2}$ e un vettore $v=(3,5)\in \mathbb{R}^{2}$, si ha che $(3,5)=3(1,0)+5(0,1)$ per cui $v_{\beta}=(3,5)$ 
- ### Dimostrazione:
	- sapendo che $v_1,...,v_n$ è base di V, preso un generico $v \in V$ per la definizione di [[Base]], sappiamo che $\exists \lambda_{1},...,\lambda_{n}:v=\lambda_1 v_1+...+\lambda_n v_n$. Per dimostrare l'unicità di questi $\lambda$ supponiamo che $v=\beta_1 v_1+...+\beta_{n} v_{n}$, da cui $v-v=\underline{0}$ e quindi $$\lambda_1 v_1+...+\lambda_n v_n-(\beta_1 v_1+...+\beta_{n} v_{n})=$$$$=(\lambda_{1}-\beta_{1})v_{1}+...+(\lambda_{n}-\beta_{n})v_{n}=\underline{0}$$ Avendo $v_1,...,v_n$ [[Indipendenza lineare||linearmente indipendenti]] è necessario che $$(\lambda_{1}-\beta_{1})=(\lambda_{n}-\beta_{n})=0$$ da cui consegue l'unicità degli scalari.