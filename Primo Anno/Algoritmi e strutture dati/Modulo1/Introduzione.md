19/02/24

Algoritmo: sequenza composta da un numero finito di istruzioni, non può essere eseguita sul PC e può utilizzare un quantitativo di memoria illimitata.

Programma: implementazione di un algoritmo, viene scritta in un linguaggio, e deve tenere conto della memoria del PC 

ogni volta che si analizza un algoritmo ci si pone 2 domande:
- Quanta memoria richiede?
- Quanto tempo richiede?

come rispondere:

es: $2^{\frac{n}{2}}\leq T(n)\leq 2^n$

K=numero di chiamate ricorsive effettuate in un secondo.
n=numero di input.

tempo in secondi di Fib2(n)$\geq \frac{2^\frac{n}{2}}{K}$ secondi e ci fa capire che usare un algoritmo ricorsivo è inutilizzabile in quanto impiegherebbe troppo tempo per calcolare numeri molto alti.

Fib3: è la versione iterativa dove il valore di ogni passaggio viene inserito in un array di lunghezza n: il programma ci impiega molto meno visto che:
- creazione array 1 op
- assegnamento $A[1]$ 1 op
- assegnamento $A[2]$ 1 op
- assegnamento di i nel for n-2 op
- assegnamento e somma in $A[i]$ n-2 op
- ritorno 1 op
Con un totale di 3n-2 operazioni da eseguire 
per quanto riguarda la memoria proporzionale ad n (creazione di array di n e assegnamento di i nel for in base ad n).


Fib4:
non si usa un array per contenere i risultati precedenti ma bastano due variabili che contengano i-1 e i-2 
e il programma impiega:
- assegnamento di a e b 2 op
- assegnamento di i nel for n-2 op
- assegnamento e somma in c n-2 op
- assegnamento di a e b 2(n-2)op
- ritorno del risultato 1 op  
  Un totale di 5n-7 operazioni quindi tempo proporzionale ad n
  per la memoria non varia rispetto all'input n.


Tra Fib3 e Fib4 risulta essere più lento Fib3 perché: accedere ad una specifica cella di memoria dell'array vuol dire andare all'inizio dell'array e poi solo dopo accedere alla cella giusta usando quindi una "microoperazione" in più. 

Fib5:
effettua il prodotto di matrici tra la matrice iniziale (che poi è uguale alla seguente) e $\begin {pmatrix}1 &1 \\ 1 &0\end {pmatrix}$
e assegna ad A il risultato e ripete nel for fino ad n. Infine ritorna $A[1][1]$.
le operazioni da effettuare sono: n-1 prodotti tra matrici, 2n-1 assegnamenti e 1 ritorno 
memoria costante che non varia in base ad n.

Risulta essere molto simile a Fib4.


mentre Fib6: utilizza un algoritmo di esponenziazione per quadrati che risulta in un tempo di $log(n)$.


