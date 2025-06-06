---
tags: []
aliases: 
data: "`2024-10-08 18:13`"
---
- # Teorema:
	- data una [[Linguaggi regolari#^aca36f||espressione regolare]] $S$  posso costruire un [[Automi finiti non deterministici||NFA]] $N[S]$ tale che:
		- $$L[N[S]]=\scr{L}\mathbf{[S]}$$
	- ovvero gli NFA riconoscono tutti i [[Linguaggi regolari]]
- # Dim:
	- per induzione sulla [[Sintassi concreta e astratta#^ec88f9||sintassi astratta]] dell'espressione $S$
	- costruiremo $N[S]$ ovvero un possibile NFA associato all'espressione regolare $S$ in modo da mantenere i seguenti punti invariati:
		- 1) lo stato iniziale non ha archi entranti:
		- 2) $N[S]$ ha un solo stato finale senza archi uscenti.
	- ## Casi vari:
		- $S=\emptyset$     
			- ![[Pasted image 20241008183533.png]]
			- si osserva che $\scr L \mathbf{[\emptyset]=\emptyset=L[N[S]]}$
		- $S=\epsilon$
			- ![[Pasted image 20241008183654.png]]
			- si osserva che $\scr L \mathbf{[\epsilon]=\{\epsilon\}=L[N[S]]}$ 
		- $S=a$
			- ![[Pasted image 20241008183750.png]]
			- si osserva che $\scr L \mathbf{[a]=\{a\}=L[N[S]]}$ 
		- $S=r\ |\ t$
			- ![[Pasted image 20241008183900.png]]
			- ![[Pasted image 20241008183928.png]]
		- $S= r\cdot t$
			- ![[Pasted image 20241008183954.png]]
		- $S=r^{*}$
			- ![[Screenshot 2024-10-08 at 18-40-27 Lez07-Gorrieri.pdf.png]]
- # ES:
	- ![[Pasted image 20241008184147.png||700]]
	- per costruire il [[Automi finiti deterministici||DFA]] associato a $N[S]$
		- $A=\epsilon-closure(0)=\{0\}$
		- $\Delta(A,a)=\epsilon-closure(\{1\})=\{1,2,4\}=B$
		- $\Delta(A,b)=\epsilon-closure(\emptyset)=\emptyset=C$
		- $\Delta(B,a)=\epsilon-closure(\{5\})=\{5\}=D$
		- $\Delta(B,b)=\epsilon-closure(\{3\})=\{3,2,4\}=E$ 
		- $\Delta(D,a)=\epsilon-closure(\emptyset)=\emptyset=C$
		- $\Delta(D,b)=\epsilon-closure(\emptyset)=\emptyset=C$
		- $\Delta(E,a)=\epsilon-closure(\{5\})=\{5\}=D$
		- $\Delta(E,b)=\epsilon-closure(\{3\})=E$ 
	- il DFA associa a $N[ab^{*}a]$ è:
		- ![[Pasted image 20241008185145.png]]
- # Link Utili:
	- 