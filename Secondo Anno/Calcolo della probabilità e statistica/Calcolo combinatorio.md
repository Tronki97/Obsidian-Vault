---
tags: 
aliases:
  - metodo dei coefficienti binomiali
  - metodo delle scelte successive
  - principio delle scelte successive
  - disposizioni senza ripetizioni
  - combinazioni
  - formula di stifel
  - probabilità binomiale
  - mss
  - formula di laplace
  - permutazioni
data: "`2025-03-04 13:37`"
---
- # Intro:
	- Esistono spazi di probabilità dove i singoletti che compongono uno [[Modello probabilistico di un esperimento aleatorio#^521af6|spazio campionario]] hanno la stessa probabilità.
	- Esiste una tecnica che consiste nel trovare una partizione di uno spazio campionario i cui eventi elementari hanno la stessa probabilità.
- # Teorema (formula di laplace):
	- Se  $\Omega=\{w_{1},...,w_{n}\}$ e $\mathbb{P}(\{w_{n}\})=\frac{1}{n}$ (_quindi siamo nel setting della probabilità uniforme_) allora 
		- $$\mathbb{P}(A)=\frac{\text{\# elementi di A}}{n}=\frac{|A|}{n}$$ 
			- con $A\subseteq \Omega$ 
		- _formula di laplace_
- # Fattoriali:
	- $$n!=n*(n-1)*...*1$$
	- Con la convenzione che:  $$0!=1$$
- # Metodo dei coefficienti binomiali:
	- $$\binom{n}{k}=\frac{n!}{k!(n-k)!}$$
	- _Consiste nella scelta di $k$ elementi da un insieme di $n$ elementi._
	- ## Casi particolari:
		- $$\binom{n}{0}=\binom{n}{n}=1$$
		- $$\binom{n}{1}=\binom{n}{n-1}=n$$
	- ## formula di newton:
		- $$(a+b)^{n}=\sum\limits_{k=0}^{n}\binom{n}{k}a^{k}b^{n-k}$$
		- ### ES:
			- $$(a+b)^{3}=\sum\limits_{k=0}^{3}\binom{3}{k}a^{k}b^{3-k}=$$
			- $$=(\binom{3}{0}*a^{0}b^{3}) + (\binom{3}{1}*a^{1}b^{2}) + (\binom{3}{2}*a^{2}b^{1})+ (\binom{3}{3}*a^{3}b^{0})=$$
			- $$= (1*1*b^{3})+(3ab^{2})+(3a^{2}b)+(a^{3})=$$
			- $$=a^{3}+b^{3}+3ab^{2}+3a^{2}b$$
- # Metodo delle scelte successive:
	- ## ES:
		- Alfabeto di 36 caratteri $\Omega=\{a,b,...,z,0,1,...,9\}=\{1,2,...,26,...,36\}$
		- Quante password di 8 caratteri sono possibili? Sarebbe $36^{8}$ ma perché?:
			- Scelte: 
				- 1°) 1 carattere dei 36 totali
				- 2°) 1 caratteri dei 36 totali.
				- E cosi via fino ad 8 scelte.
			- Quindi la $|\Omega|=\text{\# possibili scelte}^ \text{\# di scelte fatte}=36^{8}$
		- E se non si potessero ripetere i caratteri:
			- 1°) 1 carattere dei 36 possibili.
			- 2°) 1 carattere dei 35 possibili
			- $\vdots$
			- 8°) 1 carattere dei 29 possibili.
			- Quindi $$|\Omega|=36*35*34*...*29=\frac{36!}{28!}$$
	- ## Principio:
		- Se ogni elemento di $A$ può essere determinato da una sola sequenza di $k$ scelte, dove per ogni scelta ci sono $n_{1},...,n_{k}$ possibilità allora:
			- $$|A|=n_{1}*...*n_{k}$$
		- ### ES:
			- 52 carte da gioco. 13 numeri $\times$ 4 semi
				- 1) A:= insieme dei _full_ (3 carte dello stesso numero e 2 di un altro)
					- Per esempio un full potrebbe essere (1 c, 1 q, 1 p, 9 c, 9 f)
					- 4 scelte:
						- Tipo di carta nel tris: 13 possibilità
						- Tipo di carta nella coppia: 12 possibilità.
						- Semi nel tris: 4 possibilità 
						- Semi nella coppia: 6 possibilità perché si guardano le coppie di semi formabili e visto che non c’è ripetizione sono 6.
					- $$|A|=13*12*4*6=3744$$
				- 2) $A$ = insieme delle doppie coppie: (2 coppie diverse ed 1 carta libera).
					- Per esempio (1♥, 1♦, 4♠, 4♣, 7♥).
					- Scelte:
						- Tipo nella 1° coppia 13 possibilità
						- Tipo nella 2° coppia 12 possibilità 
						- Semi nella 1° coppia 6 possibilità
						- Semi nella 2° coppia 6 possibilità
						- Tipo carta singola 11 possibilità 
						- Seme carta singola 4 possibilità
					- $$|A|=13*12*11*6*6*4$$
						- Soluzione sbagliata perché vengono contate anche le doppie coppie invertite.
					- Scelte giuste:
						- Condenso le prime 2 scelte precedenti in: 
							- Combinazione di tipi che formano 2 coppie ($\frac{13\times12}{2}$)
					- $$|A|=\frac{13*12}{2}*6*6*11*4=123552$$
- # Disposizioni e combinazioni:
	- ## Disposizioni con ripetizione:
		- Dato un insieme non vuoto $E$ di $n$ elementi, indico con $DR_{n,k}$ le sequenze ordinate di $k$ elementi di $E$:
			- $$DR_{n,k}=\prod^{k}_{i=1}E=E^{k}$$
			- $|DR_{n,k}|=n^{k}$ 
		- ### ES:
			- Urna con $n$ palline numerate; $E:=\{1,...,n\}$
			- Estraggo $k$ palline con reimmissione.
			- $\Omega=DR_{n,k}$ e $|\Omega|=n^{k}$ 
			- Probabilità uniforme data da $\mathbb{P}(\{w\})=\frac{1}{|\Omega|}=\frac{1}{n^{k}}=n^{-k}$
		- ### ES:
			- Determinare gli spazi campionari per i seguenti esperimenti:
				- Scelta casuale di una parola di 8 lettere dell'alfabeto italiano di 21 lettere.
					- $\Omega= DR_{21,8}$ e $|\Omega|=21^{8}$
				- Scelta di colonne del totocalcio:
					- $\Omega= DR_{3,13}$ e $|\Omega|=3^{13}$ 
				- 10 lanci di un D6 :
					- $\Omega= DR_{6,10}$ e $|\Omega|=6^{10}$ 
	- ## Disposizioni semplici (senza ripetizione):
		- Dato un insieme $E$ di $n$ elementi, l’insieme delle disposizioni semplici (senza ripetizioni) di $k$ elementi dell’insieme $E$ è l’insieme delle sequenze ordinate di $k$ elementi distinti ovvero:
			- $$D_{n,k}=\{(x_{1},...,x_{k}): x_{i}\in E\wedge x_{i}\ne x_{j} \ | \  i\ne j\}$$
				- $D_{n,k}\subsetneq DR_{n,k}$
			- $$|D_{n,k}|=n*(n-1)*(n-2)*...*(n-k+1)=\frac{n!}{(n-k)!}$$
		- ### ES:
			- Urna con 90 numeri. Estrazione di 5 numeri senza ripetizione.
			- $\Omega=D_{90,5}$ e $|\Omega|=\frac{90!}{85!}=90*89*88*87*86=$ numero di combinazioni possibili.
			- $$\mathbb{P}(\{w\})=\frac{1}{|\Omega|}=\frac{85!}{90!}$$
	- ## Permutazioni:
		- $P_{n}:=D_{n,n}$ e $|P_{n}|=n!$
	- ## Combinazioni:
		- Dato un insieme $E$ di $n$ elementi, si indica con $C_{n,k}$ la classe dei sottoinsiemi di $E$ contenenti $k$ elementi ovvero:
			- $$C_{n,k}=\{A\subset E: |A|=k\} $$
			- E può anche essere vista come _l’insieme delle sequenze non ordinate sena ripetizione_.
		- ### Proposizione:
			- $$|C_{n,k}|=\binom{n}{k}$$
			- Che è il numero di modi di scegliere $k$ elementi da n totali.
		- ### Dim:
			- Verifico che: 
				- $$\frac{n!}{(n-k)!}=|C_{n,k}|*k!=$$
				- $$=|D_{n,k}|=|C_{n,k}|*|P_{k}|$$
					- Quest’ultima uguaglianza vale perché:
						- $$\binom{n}{k}=\frac{n!}{k!*(n-k)!}$$
					- E per il principio delle scelte successive:
						- 1) scelta dei $k$ elementi selezionati: $|C_{n,k}|$
						- 2) scelta dell’ordinamento dei $k$ elementi selezionati: $|P_{k}|$ 
				- 
		- ### ES:
			- In quanti modi si possono scegliere i semi di una coppia di carte?
				- $\Omega=C_{4,2}$ e $|\Omega|=\binom{4}{2}=\frac{4!}{2!*2!}=6$
		- ### ES:
			- In quanti modi si possono scegliere i 2 tipi di carte che formano 2 coppie:
				- $E=\{1,...,13\},\ \  n=13$
				- $\Omega=C_{13,2}$ e $|\Omega|=\binom{13}{2}=\frac{13*12}{2}$ 
		- ### ES:
			- Urna con $n$ palline numerate delle quali se ne estraggono $k$ simultaneamente.
			- Scrivo lo spazio di probabilità:
				- $\Omega=C_{n,k}$ 
				- $\mathbb{P}$ uniforme
					- $$\mathbb{P}(\{w\})=\frac{1}{|C_{n,k}|}=\frac{1}{\binom{n}{k}}=\frac{k!(n-k)!}{n!}$$
		- ### Formula di Stifel:
			- $$\binom{n}{k}=\binom{n-1}{k-1}+\binom{n-1}{k}$$
				- $$\binom{n-1}{n-1}$$
					- è il numero di combinazioni di $k$ elementi che contengono l’elemento che ho selezionato $\overline{e}$.
			- $$\binom{n-1}{k}$$
				- è il numero di combinazioni di $k$ elementi _non_ che contengono l’elemento $\overline{e}$.
		- ![[Screenshot (15).png]]
		- Anche se in realtà si potrebbe usare $D_{n,k}$ anche per estrazioni che non considerano l’ordine.
			- $$\frac{\text{casi favorevoli in}\ C_{n,k}}{\text{casi possibili in }C_{n,k}}=\frac{k!(...)}{k!(...)}=\frac{\text{casi favorevoli in}\ D_{n,k}}{\text{casi possibili in }D_{n,k}}$$
	- ## Probabilità bionomiale:
		- Urna con $b$ palline $B$ e $r$  palline $R$, si fanno $n$ estrazioni e si vuole calcolare $\mathbb{P}(A_{k})$ dove:
			- $A_{k}$ = “si estraggono $k$ palline bianche” = “si estraggono $n-k$ palline rosse”
		- Fisso lo spazio campionario delle estrazioni:
			- $\Omega=DR_{b+r,n}$
			- $\mathbb{P}$ uniforme, $$\mathbb{P}\left( \{w\}\right)=\frac{1}{(b+r)^{n}} $$
		- $E=\{B_{1},...,B_{b},R_{1},...,R_{r}\}$
		- Per trovare $\mathbb{P}(A_{k})$ devo trovarne la cardinalità uso quindi il _metodo delle scelte successive_
			- 1) scelgo la sequenza di $k$ palline bianche estratte considerando l’ordine:
				- $$|DR_{b,k}|$$
			- 2) faccio la stessa cosa per le rosse che sono $n-k$:
				- $$|DR_{r,n-k}|$$
			- 3) scelta delle $k$ estrazioni in escono palline bianche:
				- $$|C_{n,k}|$$
		- Quindi $$\mathbb{P}(A_{k})=\frac{|A_{k}|}{|\Omega|}=\frac{|DR_{b,k}|*|DR_{r,n-k}|*|C_{n,k}|}{|DR_{b+r,n}|}=$$
		- $$=\binom{n}{k}*\frac{b^{k}*r^{n-k}}{(b+r)^{n}}=\binom{n}{k}*p^{k}(1-p)^{n-k}$$
			- $$\text{con } p:=\frac{b}{b+r}$$
				- _Probabilità di estrarre una bianca in un’unica estrazione_ 
		- $k$ varia tra 0 e $n$ quindi 
			- $\tilde\Omega=\{0,...,n\}$
			- $$\mathbb{P}(\{k\})=\binom{n}{k}p^{k}(1-p)^{n-k}$$
			- Questo viene detto probabilità binomiale.
	- ## Template per risoluzione esercizi:
		- Ho un urna con 3R e 7B 
		- ### Estrazioni con reimmissione:
			- A = ne estraggo 4 e ne ottengo 2 rosse 
			- $$\mathbb{P}(A)=\frac{\binom{4}{2}*3^{2}*7^{2}}{10^{4}}$$
			- $\binom{4}{2}$ Perché se ne estraggono 4 e ne voglio 2 rosse
			- $3^{2}$ Perché ci sono 3 rosse in totale e ne voglio 2 
			- $7^{2}$ perché ci sono 7 palline bianche in totale e solo 2 slot rimanenti nella pescata siccome ne servono 2 rosse 
			- $10^{4}$ perché ci sono 10 palline in totale e ne estraggo 4
		- ### Estrazioni senza reimmissione:
			- B= // senza reimmissione.
			- $$\mathbb{P}(B)=\frac{\binom{4}{2}*3*2*7*6}{10*9*8*7}$$
			- Uguale al caso precedente ma in questo caso il numero di palline cambia ad ogni estrazione che diminuisce.
		- ### Estrazioni simultanee:
			- C= // estrazioni simultanee
			- $$\mathbb{P}(C)=\frac{\binom{3}{2}*\binom{7}{2}}{\binom{10}{4}}$$
			- In questo caso non si lavora considerando l’ordine di pescata quindi questi sono tutti i possibili modi per pescarle simultaneamente.
			- 
- 
- # Link Utili:
	- 