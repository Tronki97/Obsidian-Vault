---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Sia V uno [[Spazio vettoriale]] t.c. $v_{1},...,v_{n}\in V$ allora si dice che il sottospazio generato da $v_{1},...,v_{n}$ è l'insieme di tutte le sue [[Combinazione lineare||combinazioni lineari]] e si indica con: 
		- $$\langle v_{1},...v_{n}\rangle = \lambda_{1} v_{1}+...+\lambda_{n} v_{n}$$
			- con $\lambda_{1},...,\lambda_{n} \in \mathbb{R}$  ^5d24e7
		- se si hanno i vettori $v_{1},...,v_{n} \in V$ il più piccolo sottospazio che li contiene è proprio quello generato da $v_{1},...,v_{n}$ ovvero $\langle v_{1},...v_{n}\rangle$   
- # DEF: ^90c15c
	- Sia V uno [[Spazio vettoriale]] t.c. $v_{1},...,v_{n}\in V$ allora si dice che $v_{1},...,v_{n}$ genera V $\Longleftrightarrow V=\langle v_{1},...v_{n}\rangle$.
	- Uno s.v V si dice _finitamente generato_ se ha un insieme finito di generatori ovvero: $\exists v_{1},...v_{n}\in V : V= \langle v_{1},...v_{n}\rangle$  ^2c0f72
	- ## ES : 
		- $\mathbb{R}^{2}$ è finitamente generato; mentre $\mathbb{R}[x]$ non lo è perché per rappresentare ogni polinomio mi servirebbero infiniti elementi nel generatore, infatti $\mathbb{R}[x]=\langle 1, x, x^{2},...,x^{n}, x^{n+1},...\rangle$ 
	- ### OSSERVAZIONE
		- il sottospazio generato da $v\in V$ è l'insieme dei suoi multipli e quindi, il sottospazio generato dal vettore nullo è: $\langle \underline{0} \rangle=\underline{0}$ 
- # Proposizioni
	- Preso V come [[Spazio vettoriale]] t.c. $v_{1},...,v_{n}\in V$ allora:
		- 1)$\langle v_{1},...v_{n}\rangle \leq V$
		- 2)$Z\leq V:v_{1},...,v_{n}\in Z\implies \langle v_{1},...v_{n}\rangle\subseteq Z$ ovvero: $\langle v_{1},...v_{n}\rangle$ è il più piccolo sottospazio di V che contiene $v_{1},...,v_{n}$
		- 3)$w\in \langle v_{1},...v_{n}\rangle \Longleftrightarrow \langle v_{1},...v_{n}\rangle=\langle v_{1},...v_{n}, w\rangle$
	- ## Dimostrazione
		- 1)$$\langle v_{1},...v_{n}\rangle \leq V$$
			- dobbiamo dimostrare che $\langle v_{1},...v_{n}\rangle$ è un sottospazio di generico un V.
				- per la definizione di sottospazio bisogna avere $(0,...,0)\in \langle v_{1},...v_{n}\rangle$, vero perché la [[Combinazione lineare]] $\lambda_{1}v_{1},...,\lambda_{n}v_{n}$ con $\lambda_{1},...\lambda_{n}=0$ risulta proprio in $(0,...,0)$. Quindi $\langle v_{1},...v_{n}\rangle$ deve essere _chiuso rispetto alla somma_. Per la definizione di [[#^5d24e7||sottospazio generato]], $u$ e $v$ sono combinazioni lineari di $v_{1},...,v_{n}$ e quindi del tipo $u=\lambda_{1}v_{1}+...+\lambda_{n}v_{n}$ e $v=\beta_{1}v_{1}+...+\beta_{n}v_{n}$ .
				  La loro somma $u+v= (\lambda_{1}+\beta_{1})v_{1}+...+(\lambda_{n}+\beta_{n})v_{n} \in \langle v_{1},...,v_{n}\rangle$ per la definizione di sottospazio generato. 
				- per la _chiusura rispetto al prodotto_; preso $u \in \langle v_{1},...,v_{n}\rangle$ e $\beta \in \mathbb{R}$ dimostro che $\beta u\in \langle v_{1},...,v_{n}\rangle$. per definizione, $u$ è una [[Combinazione lineare]] di $v_{1},...,v_{n}$ quindi del tipo $u=\lambda_{1}v_{1}+...+\lambda_{n}v_{n}$. Quindi il prodotto per scalare $\beta u=\beta\lambda_{1}v_{1}+...+\beta\lambda_{n}v_{n}\in \langle v_{1},...,v_{n}\rangle$ sempre per definizione di sottospazio generato.
		- 2)$$Z\leq V:v_{1},...,v_{n}\in Z\implies \langle v_{1},...v_{n}\rangle\subseteq Z$$
			- devo dimostrare che il sottospazio generato $\langle v_{1},...v_{n}\rangle$ è sottoinsieme del sottospazio vettoriale Z.
			  Sapendo che Z è sottospazio di V composto dai vettori $v_{1},...,v_{n}$ il sottospazio generato da loro non sfora in V. Per questo si dice che è il più piccolo sottospazio generato dai vettori $v_{1},...,v_{n}$.
			  Per dimostrarlo basta guardare [[Combinazione lineare#^902652||l'osservazione sulle combinazioni lineari]] e considerarla valida per ogni combinazione lineare del sottospazio generato $\langle u_{1}, ..., u_{n} \rangle$.
			  In conclusione per dimostrare $\langle v_{1},...v_{n}\rangle\subseteq Z$ basta usare la definizione di essere sottoinsieme quindi ogni elemento di $\langle v_{1},...v_{n}\rangle$ _appartiene_ a Z. quindi fissato un elemento $u$ appartenente al sottospazio generato che può essere espresso come: $u=\lambda_1 v_{1}+...+\lambda_{n}v_{n}$, e per l'ipotesi che $v_{1},...,v_{n}\in Z$ allora anche la sua combinazione lineare appartiene a Z per le proprietà delle combinazioni lineari.
		- 3)$$w\in \langle v_{1},...v_{n}\rangle \Longleftrightarrow \langle v_{1},...v_{n}\rangle=\langle v_{1},...v_{n}, w\rangle$$ ^e08177
			- $\implies$)
				- Per dimostrare che $\langle v_{1},...v_{n}\rangle=\langle v_{1},...v_{n}, w\rangle$ basta dimostrare $w\in \langle v_{1},...v_{n}\rangle$ ovvio per ipotesi.
			- $\Longleftarrow$) 
				- devo dimostrare che $w\in \langle v_{1},...v_{n}\rangle$, ma per ipotesi sappiamo che $\langle v_{1},...v_{n}\rangle=\langle v_{1},...v_{n}, w\rangle$ quindi sfruttando le proprietà dell'uguaglianza mi riduco a dimostrare che: $w\in \langle v_{1},...v_{n}, w\rangle$, ovvio.
	- ## OSSERVAZIONI
		- Verificato che (1,0),(0,1),(1,2) generano $\mathbb{R}^2$, se so che (1,2) è una combinazione lineare degli altri 2 posso scrivere che $\mathbb{R}^{2}=\langle(1,0),(0,1)\rangle$. Quindi per trovare l'insieme di vettori generati più piccolo possibile per un determinato sottospazio è necessario ricorre al concetto di [[Indipendenza lineare]] 
- # ESEMPI:
	- $$\mathbb{R}^{3}=\langle (1,0,0),(0,1,0),(0,0,1)\rangle$$
		- per dimostrarlo espandiamo il sottospazio usando la definizione:
			- $$\langle (1,0,0),(0,1,0),(0,0,1)\rangle= \lambda_{1}(1,0,0)+\lambda_{2}(0,1,0)+\lambda_{3}(0,0,1)$$
				- $\lambda_{1...3}\in \mathbb{R}$
		- ora per dimostrare che $\mathbb{R}^3$ è uguale a ciò fisso un vettore generico $(a,b,c)\in \mathbb{R}^{3}$ e dimostro che esso è una combinazione lineare di $\langle (1,0,0),(0,1,0),(0,0,1)\rangle$:
			- $$(a,b,c)=\lambda_{1}(1,0,0)+\lambda_{2}(0,1,0)+\lambda_{3}(0,0,1)$$
		- ovvero:
			- $$(a,b,c)=(\lambda_{1},\lambda_{2},\lambda_{3})$$
		- La domanda da porsi è: si può trovare $\lambda_{1}, \lambda_{2}, \lambda_{3}$ t.c. si eguagli l′espressione? La risposta è si, infatti per $\lambda_{1} = a, \lambda_{2} = b, \lambda_{3} = c$ ho che: 
			- $$(a,b,c)=(a,b,c)$$
	- $$\mathbb{R}^{2} =\langle (2,1),(-1,-1)\rangle$$
		- espando il *sottospazio generato*: $$\langle (2,1),(-1,-1)\rangle= \lambda_{1}(2,1)+ \lambda_{2}(-1,-1)$$
			- $\lambda_{1,2}\in \mathbb{R}$
		- fisso un vettore generico: $(a,b)\in\mathbb{R}^2$ e dimostro che è una combinazione lineare di $\langle (2,1),(-1,-1)\rangle$, quindi:
			- $$(a,b)=\lambda_{1}(2,1)+ \lambda_{2}(-1,-1)$$
			- Ovvero:
				- $$(a,b)=(2\lambda_{1}-\lambda_{2},\lambda_{1}-\lambda_{2})$$
		- detto questo costruisco il sistema lineare associato:
			- $$\begin{cases}a=2\lambda_{1}-\lambda_{2} \\b=\lambda_{1}-\lambda_{2} \end{cases}$$
		- Quello che ci interessa è vedere se il sistema ha soluzione, ovvero se esiste una coppia di $\lambda_{1},\lambda_{2}$ che soddisfi le equazioni. Quindi procedo scrivendo la [[Matrici||matrice]] associata al sistema.
			- $$\begin{pmatrix}2&-1|&a\\1&-1|&b\end{pmatrix}$$
		- La riduco a [[Matrici#^f9d3d2||scala]] usando [[Algoritmo di Gauss||Gauss]]:
			- $$\begin{pmatrix}2&-1|&a \\0&\ \ \ 1| &b-2a\end{pmatrix}$$
		- A prescindere dai valori di a e b, il [[Rango righe]] della matrice incompleta è uguale al rango righe della matrice completa ovvero: 
			- $$rr(A)=2=rr(A|\underline{b})$$
		- Quindi il sistema ha soluzione. Il numero di incognite è sempre 2, perciò il sistema ha una sola soluzione.
		- Infine possiamo affermare che un qualunque $(a,b)\in \mathbb{R}^2$ può essere generato a partire dai vettori (2,1) e (-1,-1), ovvero: $(a,b)\in\langle (2,1),(-1,-1)\rangle\ \ \forall(a,b)$ e che quindi:
			- $$\mathbb{R}^{2} =\langle (2,1),(-1,-1)\rangle$$ 
 