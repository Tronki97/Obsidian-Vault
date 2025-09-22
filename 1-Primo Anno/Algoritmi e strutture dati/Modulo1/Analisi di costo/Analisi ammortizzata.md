---
tags: 
aliases:
  - metodo aggregazione
  - metodo accantonamenti
data: "`2024-08-31 20:05`"
---
- Metodo per valutare il costo medio di una sequenza di operazioni
- Utilizzato per catturare la complessità media
- Differenza
	- Costo medio: costo medio singola operazione
	- Costo ammortizzato: Costo medio di sequenza di istruzioni

- Possiamo applicarla a sequenze di operazioni distinte

Per descrivere i metodi utilizzo il contatore binario:
```cpp
function increment(Array A[1 · · · k])
	 i = k 
	 while i ≥ 1 and A[i] == 1 do 
		 A[i] = 0 
		 i = i − 1 
	 
	 if i ≥ 1 then // if i = 0 counter overflow 
			A[i] = 1
```

In una singola operazione consideriamo:
Caso Ottimo: $O(1)$ (Trova 0 in una delle posizioni)
Caso Pessimo: $O(k)$ (La grandezza dell'array in input è $k$, quindi, sarà proporzionale a k)

Con una sequenza di $n$ elementi determiniamo upper e lower bound semplicemente moltiplicando il costo per singola operazione per $n$:

$\Omega(n) \land  O(nk)$

Proviamo ad utilizzare i metodi per il costo ammortizzato:

### Metodo Aggregazione

- Determinare l'upper-bound del costo totale di una sequenza di $n$ operazioni e dividiamo per $n$, per trovare il costo per operazione.
- Ideale se il costo totale e ben definito(troviamo l'upper-bound, difficile)

#### Contatore Binario

$n =$ Valore in input, (conta fino a $n$)
Notiamo un pattern nei cambiamenti dei bit(operazioni) per ogni colonna:
- Operazione ogni riga per $A[5]$ ($n$ operazioni)
- Operazione ogni 2 righe per $A[4]$ ($\frac{n}{2}$ operazioni)
- $...$
- Operazione ogni $2^{k-1}$ righe per $A[1]$ ($\frac{n}{2^{k-1}}$ operazioni)
- 
Sommiamo tutte queste operazioni per trovare un limite superiore per $n$ operazioni.

$\sum_{i=0}^{k-1} \frac{n}{2^i}$

Portiamo fuori $n$ e consideriamo la sommatoria a $\infty$ $\frac{1}{2^i}$ sarà sempre più vicino a $0$.


$n\sum_{i=0}^{\infty} \frac{1}{2^i}$

Così possiamo utilizzare una sommatoria nota, e il risultato viene:

$n \cdot \frac{1}{1-\frac{1}{2}} = 2n = n$

$\in O(n)$

Il costo ammortizzato per operazione sarà:

$\frac{O(n)}{n} = O(1)$

### Metodo Accantonamenti
- Un costo ammortizzato ad ogni operazione
- Salviamo il credito e lo utilizziamo quando serve
- Più flessibile
# Concetto

## Definizione

È un equazione che descrive un algoritmo per casi, in termini degli elementi precedenti

Ex. Conta elementi di un albero di fibonacci

$1$ se $n \leq 2$
$T(n − 1) + T(n − 2) + 1$ se $n > 2$

Le equazioni di ricorrenza valgono solo per algoritmi ricorsivi.

Non siamo influenzati da arrotondamenti:
- Dentro T non possiamo toccare nulla
- Le notazioni asintotiche possiamo semplificarle

Semplifichiamo sostituendo ai $\Theta$ e $O$ con elementi appartenenti ad essi o al limite superiore.

Ex. $O(1) = 1$ $\Theta(n)=n$

 Costanti con $1$ e $1n$ per $O(n)$

Vediamo adesso metodi per trovare la complessità computazionale in notazione asintotica.


## Metodo dell'iterazione

^4f2267

Trasformiamo la parte ricorsiva della nostra equazione di ricorrenza finche non appare uno schema ricorsivo legato ad ogni passo di iterazione.

Esempio:
$$T(n)=
\begin{cases}
1 \text{       se n=1    } \\
T(n/2) + c \text {      se }n > 1
\end{cases}
$$



$T(n) = T(n/2) + c$ passo 1
 $= T(n/4) + c + c$ passo 2 //(La chiamata su $\frac{n}{2}$ sarà $T(\frac{n}{4}$) + c e ci aggiungo il $+ c$ della riga precedente)
 $= T(n/8) + c + c + c$ passo 3
$...$ 
 $= T(n/2^i ) + c · i$ passo $i$

Sappiamo che l'algoritmo raggiunge il caso base quando n sarà = 1, in questo caso quando $\frac{n}{2^i} = 1$.
Quindi, $i = log_2n$.
Nel caso di input $n$, eseguiremo esattamente $log_2n$ iterazioni.
$\in \Theta(logn)$

(Ignoriamo $c \cdot i$ perchè è costante e quindi per le proprietà della [[Notazione asintotica]], possiamo scartarla)


Può diventare molto complesso velocemente

Per questo esiste il:

## Master Theorem

![teo](masterTheo.png)

- $a$ sono i sotto-problemi in cui è stato diviso il problema(Numero di chiamate ricorsive in una chiamata a funzione)
- $\frac{n}{b}$ dimensione dei sottoproblemi
- $f(n)$ costo di ogni chiamata ricorsiva

Molto complesso, per questo esiste la versione semplificata:


![dda](Theosempl.png)

Funziona però solo quando $f(n)$ è un polinomio.


### Vediamo la ricerca binaria
```cpp
function binsearch(Array A[1 · · · n], int x, int i, int j) → int 
	 if i > j then 
		  return −1 
	else 
	    m = (i + j)/2 ▷ Divisione intera 
	     if A[m] == x then  return m 
		 else if A[m] > x then 
	         return search(A, x, i, m − 1) 
         else 
	         return search(A, x, m + 1, j)
```


Il caso base, costante se n=0 // n = spazio di ricerca

Caso ricorsivo, $1+T(\frac{n}{2})$

$$
T(n)=\begin{cases}
1 \text{ } n=0\\
T(\frac{n}{2}) +1 \text{ } n>0
\end{cases}

$$

a = 1, b =2
$\alpha = log_2 1 \beta = 0$, quindi, $\Theta(logn)$ 

## Theta di Fibonacci

Sappiamo che Fibonacci Ricorsivo è:
$\in \Omega(\sqrt{2^n})$ e $\in O(2^n)$


Fibonacci problema ostico non risolvibile con i precedenti metodi, ma utilizziamo

$T(n) = 2F_n -1$. (Teorema) 

$T(n) \in \Theta(F_n)$

Dalla formula chiusa notiamo che $F_n$ sarà un numero elevato alla $n$. Di preciso $1,62^n$, quindi:
- $\in \Theta(1.62^n)$





