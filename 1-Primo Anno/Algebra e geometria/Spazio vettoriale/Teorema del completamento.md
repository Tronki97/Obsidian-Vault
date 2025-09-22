---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Sia V uno [[Spazio vettoriale]] [[Sottospazio generato#^2c0f72||fg]] e sia $\beta = v_1,...,v_n$ [[Base]] di V e $w_{1},...,w_{m}\in V$ [[Indipendenza lineare||linearmente indipendenti]], allora: 
		- 1)$m\leq n$
		- 2)possiamo aggiungere a $w_{1},...,w_{m}$ fino a $n-m$ vettori di $\beta$ in modo da ottenere una base 
		In pratica se abbiamo un po di vettori linearmente indipendenti appartenenti ad uno spazio di V, allora possiamo aggiungerne un po per ottenere una base 
		_N.B_: questo teorema è simmetrico a quello dell'[[Base#^6a952a||esistenza della base]]. In questo caso però al posto che togliere dei vettori dipendenti _ci viene dato un criterio per aggiungerne al fine di creare una base_. 
- # Dimostrazione
	- $m\leq n$
		- suppongo per assurdo che $m>n$ ed essendo $w_{1},...,w_{m}\in V$ definisco $W=\langle{w_{1},...,w_{m}}\rangle\leq V$. Per cui ho che  $\langle{w_{1},...,w_{m}}\rangle\leq \langle{v_1,...,v_n}\rangle$ ed essendo un sottospazio posso affermare che $V=\langle{w_{1},...,w_{m}, v_1,...,v_n}\rangle$. Per [[Base#^6a952a||esistenza della base]], sapendo che $w_{1}$ è combinazione lineare di $v_1,...,v_n$, se elimino $v_{1}$ lo spazio generato non cambia. Ripeto lo stesso processo per tutti gli altri $v$ arrivando a finirli per cui rimango con $V=\langle{w_{1},...,w_{m}}\rangle$, ed essendo per ipotesi $w_{1},...,w_{m}$ linearmente indipendenti allora sono anche base di V ritrovandomi con $$V=\langle{w_{1},...,w_{m}}\rangle=\langle{v_1,...,v_n}\rangle$$ dove $m>n$, $v_1,...,v_n$ e $w_{1},...,w_{m}$ linearmente indipendenti. allora prendo $w_{1}$ rappresentabile come [[Combinazione lineare]] di $v_1,...,v_n$ e sostituendolo con $v_{1}$ ottenendo $V=\langle{w_{1},v_{2},...,v_n}\rangle$ ripeto la stessa cosa con le altre $v$ arrivando ad ottenere $V=\langle{w_1,...,w_n}\rangle=\langle{w_{1},...,w_{m}}\rangle$ che è assurdo. Infatti prendendo $w_{n+1}$ da $w_{1},...,w_{m}$ (dato che $m>n$), questo è generato $w_1,...,w_n$ per cui è linearmente dipendente da $w_1,...,w_n$, il che è in contraddizione con l'ipotesi che $w_{1},...,w_{m}\in V$ sono [[Indipendenza lineare||linearmente indipendenti]].
- # Conseguenze ^9c1905
	- sappiamo che i [[Sottospazi vettoriali di R2]] sono 3: _banale_, _una retta passante per l'origine_, o tutto $\mathbb{R}^{2}$. come già dimostrato, due vettori indipendenti sono sufficienti per generare l'intero piano $\mathbb{R}^{2}$. Questo vuol dire che un eventuale terzo vettore sarebbe [[Combinazione lineare]] dei due. Il teorema del completamento ci conferma questa tesi: sapendo che $\mathbb{R}^{2}= \langle{v_{1},v_{2}}\rangle$ dove $v_{1}$ e $v_{2}$ sono due vettori linearmente indipendenti, allora $\beta=v_{1},v_{2}$ è base di $\mathbb{R}^{2}$. Il teorema ci dice che allora non possiamo prendere più di 2 vettori linearmente indipendenti in $\mathbb{R}^{2}$
	- _In generale_:
		- _In $\mathbb{R}^{n}$ ci sono al massimo $n$ vettori linearmente indipendenti_ 
- # ES:
	- Se considero un vettore $S=3,1+x,x^{2},5x,4x,-2x^{3},x^{2}+10x-1$ tale che $\mathbb{R}_{3}[x]=\langle{S}\rangle$, sin da subito posso dire che sono linearmente dipendenti: essendo in $\mathbb{R}_{3}[x]$ avremmo un massimo di 4 vettori generatori che possono essere linearmente indipendenti, proprio per il teorema del completamento. Questo perché la base canonica è $\beta = (x^{3},x^{2},x,1)$ 