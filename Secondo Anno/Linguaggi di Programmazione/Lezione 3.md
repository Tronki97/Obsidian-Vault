---
Professor: roberto.gorrieri@unibo.it
Module: "1"
Date: 19-09-2024
Last Modified: 19-09-2024
---
---
# APPUNTI
+ __Descrizione Di Un Linguaggio__
	+ ___Sintassi___: ci dice quando una frase è _corretta_ sintatticamente.
		+ _Aspetto Lessicale_: Parole che si possono usare.
			+ Vi è una descrizione del lessico attraverso _dizionari_ o strutture più complesse.
		+ _Aspetto Grammaticale_: Modo in cui si costruiscono frasi corrette con un certo lessico. 
			+ Vi è una descrizione attraverso delle vere e proprie _regole grammaticali_.
				+ Si possono quindi generare infinite frasi, le quali però non tutte hanno _senso compiuto_ in quanto abbiamo posto delle regole grammaticali.
	+ ___Semantica___: ci dice quando una frase ha effettivamente un _significato_.
		+ Prima di tutto devo sapere a quale _linguaggio_ ci stiamo riferendo
		+ Per dare significato ad un linguaggio bisogna inoltre _basarsi_ su un linguaggio già utilizzato per il quale non bisogna aggiungere ulteriori _informazioni_ e del quale sappiamo quindi il significato.
			+ Ad esempio per tradurre qualcosa utilizziamo sempre un linguaggio di base a noi noto.![[Drawing 2024-09-19 13.46.49.excalidraw]]
		+ Vi è una _funzione di interpretazione semantica_ che descrive il significato stesso di una frase in un certo linguaggio.
			+ Dare significato ad un programma significa ottenere una funzione calcolata con un certo input che restituisce una determinato output voluto.
				+ Questa funzione è proprio la _semantica del linguaggio_.
	+ ___Pragmatica___: ci dice il modo in cui frasi _corrette_ e _sensate_ vengono _usate_.
		+ Si tratta di un insieme di regole che _guidano l'uso_ del linguaggio.
	+ ___Implementazione___: ci dice come una frase viene _eseguita_.
		+ Si tratta appunto di eseguire una frase di un linguaggio _sintatticamente corretta_ rispettandone la _semantica_.![[Drawing 2024-09-19 13.05.38.excalidraw]]
+ __Lessico E Frasi Del Linguaggio__
	+ ___Alfabeto___: elenco di simboli tipicamente _finito_.
		+ ___Lessico___: insieme di sequenze finite di _parole_ scritte utilizzando l'alfabeto.
			+ ___Frasi___: insieme di sequenze finite di _parole del lessico_.
	+ ___Linguaggio Formale___: Dato un alfabeto $A$, un linguaggio formale $L$ è un insieme di parole costruite sull'alfabeto $A$.
		+ Per indicare l'insieme di tutte le parole si indica con $A^{*}$, dove: $$A^{*}=\bigcup_{n\geq0} A^{n} \ \ \ dove \ \ \ A^{0} = \{\epsilon\}$$dove $\epsilon$ è la _parola vuota_ e $A^{*}$ rappresenta tutte le _sequenze possibili_ di parole costruite con l'alfabeto $A$.
			+ $A^{*}$ è un insieme _infinito contabile_.
				+ Dato un'ordinamento crescente, possiamo elencare tutte le parole in $A^{*}$.
					+ Prima si elenca la parola vuota $\epsilon$, poi le parole di lunghezza $1$ $A^{1}$ e così via.
				+ Se l'alfabeto fosse _infinito_, allora $A^{*}$ sarebbe comunque contabile.
					+ $A$ è in corrispondenza _biunivoca_ con $\mathbb{N}$.
						+ $\mathbb{N} \times \mathbb{N}$ è numerabile (dove-tailing o costruzione diagonale)$$f^{2}: \mathbb{N} \times \mathbb{N} \to \mathbb{N}  \ \ \ \ \ biunivoca$$ 
						+ $\mathbb{N}^{k}$ è numerabile $$f^{k}(x_{1}, x_{2}, \dots, x_{k}) = if \ k = 2 \ then f^{2}(x_{1}, x_{2})$$$$else \ f^{2}(x_{1}, f^{k-1}(x_{2}, \dots, k))$$
						+ $\mathbb{N}^{*} = \bigcup_{k \geq 0}\mathbb{N}^{k}$ è numerabile $$f(x_{1}, \dots, x_{k}) = f^{2}(k, f^{k}(x_{1}, \dots, x_{k}))$$
		+ Quindi $L \subseteq A^{*}$.
			+ Se $A$ è un insieme finito allora il linguaggio sarà finito. Al contrario avremo un linguaggio infinito.
+ __Definizioni Ausiliarie__:
	+ ___Lunghezza Di Una Parola___: si indica con $| \dots |$.
		+ Ad esempio $| \epsilon | = 0$.
	+ ___Concatenazione___: parola ottenuta _giustapponendo_, ovvero collocare in maniera contigua, una parola $x$ con una parola $y$: $$w = xy \iff \begin{cases} |w| = |x| + |y| \\ w(J) = x(J) & per \ 1 \leq J \leq |x| \\ w(|x| + J) = y(J) & per \ 1 \leq J \leq |y| \end{cases}$$dove $w(J)$ indica il $J$-esimo _simbolo_ di $w$.
		+ Leggi della concatenazione:
			+ _Associatività_: $x(yz) = (xy)z$.
			+ _Parola Vuota Come Elemento Neutro_: $x\epsilon = x = \epsilon x$.
	+ ___Sottostringa___: Viene definita come segue: $$\exists x, y \in A^{*} \ \ \ tali \ che \ \ \ w = xvy$$dove $v$ è una _sottostringa_ di $w$.
		+ $x$ e/o $y$ possono essere $\epsilon$.
		+ Ogni stringa è sottostringa di se stessa.
		+ $\epsilon$ è sottostringa di ogni stringa.
	+ ___Suffisso___: $v$ è suffisso di $w$ $\iff \exists x \in A^{*} \vert w = xv$.
	+ ___Prefisso___: $v$ è suffisso di $w$ $\iff \exists x \in A^{*} \vert w = xv$.
	+ ___Potenza___: la potenza $n$-esima di una stringa $w$ è: $$w^{0}=\epsilon \ \ \ w^{n+1}=ww^{n} \ \ \ \forall n >0$$Ad esempio $(ab)^{3} = ababab$.
+ __Operazioni Su Linguaggi__
	+ ___Complemento___: $$\overline{L} = \{w \in A^{*} \vert w \notin L\} = A^{*} \setminus L$$
	+ ___Unione E Intersezione___: $$L_{1} \cup L_{2} = \{w \vert w \in L_{1} \lor w \in  L_{2}\}$$$$L_{1} \cap L_{2} = \{w \vert w \in L_{1} \land w \in  L_{2}\}$$
	+ ___Concatenazione___: $$L_{1} \cdot L_{2} = \{w_{1}w_{2}\vert w_{1} \in L_{1} \land w_{2} \in L_{2}\}$$
		+ Da notare che la concatenazione ha la stessa definizione del prodotto cartesiano. Essi sono però diversi in quanto in questo caso _valgono le leggi della concatenazione_ e quindi i due insiemi _non sono sempre equipotenti_. 
	+ ___Chiusura Positiva___: $$L^{+} = \bigcup_{n \geq 1}L^{n}$$
# DOMANDE

# REFERENZE

---