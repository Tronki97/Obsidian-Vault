---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- sia V uno [[Spazio vettoriale]], un sottoinsieme $S\subseteq V$ si dice _sottospazio vettoriale_ di V se a sua volta è uno spazio vettoriale. In particolare deve verificare 3 condizioni:
		- 1)$S\ne\emptyset$
		- 2)$\forall u,v \in S$  $u+v\in S$ essere _chiuso rispetto alla somma_
		- 3) $\forall u \in S, \forall \lambda \in \mathbb{R}$ $\lambda u\in S$ _chiuso rispetto al prodotto per scalari_.
		Rispettate queste condizioni S dice sottospazio di V e si indica con:$$S\leq V$$_N.B_: per verificare la prima condizione basta dimostrare che $\underline{0}\in S$. infatti se $S\ne\emptyset$ allora $\exists u \in S$ che posso moltiplicare per lo scalare 0 e ottenere $\underline{0}$ che quindi sarà in S per la chiusura rispetto al prodotto 
- # Leggi generali
	- $$\forall u,v \in V,\ \forall \lambda,\mu \in \mathbb{R} \ \ \lambda u+\mu v \in V$$
	  Per unione della 2° condizione con la 3°. $$\forall u \in V: u\ne 0, \forall \lambda, \mu \in \mathbb{R}\ \ \lambda\ne \mu \implies \lambda u\ne\mu u$$
	  questo perché fissato uno [[Spazio vettoriale]] V, si ha che il sottospazio banale e V stesso sono sempre sottospazi di V
- # Casi vari
	- Preso un $U\leq V$, sono 2 i casi possibili:
		- 1)$U=\underline{0}$, in tal caso U è detto _sottospazio banale_
		- 2)$U\ne \underline{0}\implies\exists u \in U:u\ne \underline{0}$, in questo caso U contiene tutti i vettori del tipo $\lambda u$ al variare di $\lambda \in \mathbb{R}$; allora U _contiene infiniti vettori_;
		Quindi in un sottospazio o c'è un solo vettore(nullo) o ce ne sono infiniti 
- # ES:
	- Verifico che: $S=(x, 3x)|x\in \mathbb{R}$ è sottospazio di V($\mathbb{R}^{2}$).
		- 1)$S\ne\emptyset$. VERO 
		- 2)presi $u_{1}=(x_{1},3x_{1})$ e $u_{2}=(x_{2},3x_{2})$ $\in S$, la loro somma $u_{1}+u_{2}=(x_{1}+x_{2},3x_{1}+3x_{2})=(x_{1}+x_{2},3(x_{1}+x_{2}))\in S$ per definizione 
		- 3)preso $u_{1}=(x_{1},3x_{1})$ e $\lambda \in \mathbb{R}$, il prodotto $\lambda u_{1}=(\lambda x_{1},\lambda 3x_{1})=(\lambda x_{1},3(\lambda x_{1}))\in S$ per definizione 
		Quindi S è un sottospazio di V
	- Verifico che $S=(x_{1},x_{2},x_{3})|x_{1}+2x_{2}-x_{3}\geq0$ è sottospazio di $\mathbb{R}^{3}$
		- 1)$S\ne\emptyset$. VERO perché $(0,0,0)\in S$
		- 2)presi $u_{1}=(x_{1},x_{2},x_{3})$ e $u_{2}=(y_{1},y_{2},y_{3})\in S$, la somma $u_{1}+u_{2}=(x_{1}+y_{1},x_{2}+y_{2},x_{3}+y_{3})$ per appartenere ad S dovrebbe essere verificato che: $$(x_{1}+y_{1})+2(x_{2}+y_{2})-(x_{3}+y_{3})=$$ $$=x_{1}+y_{1}+3x_{2}+3y_{2}-x_{3}-y_{3}\geq 0$$ Vero perché somma di due positivi per le ipotesi.
		- 3)preso $u_{1}=(x_{1},x_{2},x_{3})$ e $\lambda \in \mathbb{R}$ si ha che $\lambda u_{1}=(\lambda x_{1},\lambda x_{2},\lambda x_{3})$, per appartenere ad S deve verificarsi che $$\lambda x_{1}+2\lambda x_{2}-\lambda x_3=\lambda(x_{1}+2x_{2}-x_{3})\geq 0$$ Il che non è verificato $\forall \lambda \in \mathbb{R}$; infatti basta pensare ai numeri negativi  
		Quindi S non è un sottospazio di $\mathbb{R}^{3}$
		  
