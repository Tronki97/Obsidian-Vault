---
tags: 
aliases:
  - Generare equivale lineare indipendenza
  - GEL
data: "`2024-08-31 20:05`"
---
- # Def:
	- Il teorema GEL(_Generare equivale lineare indipendenza_) ci dice che se $V$ è uno [[Spazio vettoriale]] di [[Dimensione]] $n$ allora sono equivalenti 
	- 1)$v_1,...,v_n$ è [[Base]] di V
	- 2)$v_1,...,v_n$ sono [[Indipendenza lineare||linearmente indipendenti]]
	- 3)$v_1,...,v_n$ [[Sottospazio generato||generano]] V
	Questa relazione tra _dimensione_, _base_, _indipendenza lineare_ e _generazione_ è una conseguenza del [[Teorema del completamento]]
- # Dimostrazione:
	- per la definizione di base, $1 \implies 2$ e $1\implies 3$. 
	  Verifico gli altri casi.
	- $2\implies 1$
		- Ho $v_1,...,v_n$ vettori linearmente indipendenti di V e so che e so che $dim(V)=n$, allora per il [[Teorema del completamento]] posso aggiungere $dim(V)-n=0$ vettori a $v_1,...,v_n$ per completarlo ad una base di V
	- $3\implies 1$
		- $v_1,...,v_n$ generano V, $dim(V)=n$ per cui per l'[[Base#^6a952a||esistenza della base]] posso cancellare vettori dipendenti di $v_1,...,v_n$ per ottenere una base di dimensione $n$, ma appunto dato il numero di vettori non serve cancellarne nessuno.
- # Utilità
	- Il teorema GEL ci assicura che se di uno [[Spazio vettoriale]] conosciamo la sua dimensione $n$, allora so che:
		- se un insieme di vettori $v_1,...,v_n$ è linearmente indipendente allora è anche base e quindi genera il suddetto spazio vettoriale; 
		- se un insieme di vettori $v_1,...,v_n$ genera allora è anche base di quello spazio vettoriale e quindi linearmente indipendente;
		- se un insieme di vettori $v_1,...,v_n$ è base dello spazio vettoriale allora è anche linearmente indipendente e genera;
		Per cui se ci viene dato un insieme $2x,5,x^{2}\in \mathbb{R}_{3}[x]$ di vettori la cui dimensione è 3, per controllare se sono base ci basta verificare che generino $\mathbb{R}_{2}[x]$ o che siano linearmente indipendenti.
- # ES:
	- se devo stabilire che $(1,3,4),(2,7,9),(0,1,-5),(4,3,2)$ sono linearmente indipendenti possiamo usare il [[Indipendenza lineare#^5edba6||metodo standard]] o semplicemente osservare che trattandosi di vettori in $\mathbb{R}^{3}$ che ha dimensione 3, è possibile selezionare al massimo 4 vettori linearmente indipendenti, per cui no: sono dipendenti.