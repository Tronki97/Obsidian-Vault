---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
un algoritmo A ha una cc(complessità computazionale) _O_(f(n)) rispetto ad una risorsa di calcolo se le risorse necessarie usando un input di dimensione n è _O_(f(n))

Un problema P ha cc _O_(f(n)) rispetto ad una risorsa di calcolo se il miglior algoritmo che risolve P ha un cc di  _O_(f(n)) rispetto a tale risorsa. 

spesso si guardano i ==casi ottimi== e i ==casi pessimi== o il ==caso medio==:

- Caso ottimo: comportamento in condizioni ottimali.
- Caso pessimo comportamento in casi sfavorevoli.
- Caso medio: comportamento medio su tutti i possibili input. 

Di solito nello studio di algoritmi si guarda il caso medio e/o il caso pessimo

## Esempi

Richiesta:
Algoritmo che cerca un elemento preso in input in un array(sempre preso in input) che restituisce la posizione dell'elemento se presente, -1 Altrimenti.

### Ricerca lineare
```cpp
	function linsearch(Array A[1 · · · n], int x) → int        for i = 1, · · · , n do
	     if A[i] == x then
           return i 
           
		return −1
```

Indichiamo con $f(n)$ la funzione che indica il costo computazionale.

#### Caso Ottimo:

Se l'elemento è il primo non devo iterare, ma ho solo il costo costante degli assegnamenti e dei confronti.

$f(n) \in O(1)$

Se costruiamo il limite il numero di operazioni e costante, quindi, $\Theta(1)$, sarebbe più corretto. Ma equivalente

#### Caso Ottimo 2:

Se è nella seconda posizione il calcolo è sempre lo stesso, il costo rimane costante, quindi: 

$f(n) \in O(1)$

Non sempre interessante, capita poche volte.

#### Caso Pessimo:

Se l'elemento non è presente nell'[[Array]], allora il costo computazionale aumenta linearmente rispetto al valore dell'input.

$f(n) \in O(n)$

##### Caso Pessimo 2:

Se l'elemento e l'ultimo dell'array il costo aumenta linearmente, itero sempre $n$ volte.

$f(n) \in O(n)$

Interessante: formula un limite per la quale non si può fare peggio, quindi, utile

#### Caso Medio

La media di tutti i casi non ottimi o pessimi, (il caso più complesso da calcolare)

L'elemento sta in posizione $i$ con le stesse probabilità per tutte le stesse posizioni, quindi con $\frac{1}{n}$ di probabilità che trovi una specifica posizione.

Assunzione non sempre vera ma l'unica che possiamo fare.

Consideriamo anche il caso di elemento non trovato
$\frac{1}{n+1}$ Assumendo che si trovi in una cella finta chiamata "nontrovato" o -1.

Sommiamo tutte le probabilità moltiplicate per tutti i costi, diviso per tutti i casi.

Troviamo che il costo rimane sempre sempre lineare.

Se prendiamo la media pura a livello intuitivo rimane sempre lineare

### Ricerca Binaria
```cpp
function binsearch(Array A[1 · · · n], int x ) → int
	i = 1, j = n
		while i ≤ j do
			m = (i + j)/2
			if A[m] == x then
				return m
			else if A[m] < x then
				i = m + 1
			else
				 j = m − 1
		return −1
```
#### Caso Ottimo

Se l'elemento è in mezzo non devo iterare, ma ho solo il costo costante degli assegnamenti e dei confronti.

$f(n) \in O(1)$

#### Caso Pessimo

Nel caso pessimo la dimensione dello spazio  dimezza sempre e in posizione $i$ abbiamo uno spazio di $n/2^{i-1}$.
Ci dobbiamo fermare nel caso in cui lo spazio e minore di zero.
$n/2^{i-1} < 1$ 
$n < 2^{i-1}$ 
$log(n) < log(2^{i-1})$ 
$log(n) < (i-1)(log(2))$ 
$log(n)+1 < i$

Sappiamo che abbiamo un numero di iterazioni inferiore a $log(n)+1$, Quindi abbiamo una complessità computazionale:

$f(x) \in O(log(n))$

#### Caso Medio

Nel caso medio consideriamo sempre la probabilità uniforme 1/n senza considerare il caso.

Quindi dubbio considerare le probabilità che si trovi in un certo slot, quindi, abbiamo,
1 cella che costa 1 passo, 2 celle che costano 2 passi. Fino ad avere $2^{log(n)-1}$ celle che costano $log(n)$ iterazioni(passi).
Questo lo dividiamo per il numero di celle totali
$$\frac{1 ∗ 1 + · · · i ∗ 2^{i−1} + · · · + log_2 n ∗ 2^{log_2{n}−1}}{n}$$

1 passo per 1 cella
2 passi per 2 celle
3 passi per 4 celle

Questa formula non dice nulla di utile, innanzi tutto scriviamola in forma di sommatoria:$$\frac{1}{n}\sum_{i=1}^{log_2n}i2^{i-1}$$Dove $i$ in questo caso rappresenta il numero di passi(Costo), sapendo però che il costo massimo è $log_2n$ possiamo portare fuori dalla sommatoria la $i$ considerando solo il caso di costo maggiore($log_2n$).
Quindi:
$$\frac{log_2n}{n} \sum_{i=1}^{log_2n}2^{i-1}$$
Utilizzando la sommatoria nota:
$$\sum^{log_2n}_{i=1}2^i$$

Otteniamo:
$$\frac{log_2n}{n} \frac{2^{log_2n+1}-2}{2-1}$$

$2^{log_2n} = n$ quindi:

- $$\frac{log_2n}{n} \frac{2n-2}{1}$$
- $$log_2n \cdot (2-\frac{2}{n})$$
- $$(2(log_2n)-\frac{2( log_2n)}{n})$$
Da questo deduciamo che il caso medio $\in O(log_2n)$



- altro algoritmo da analizzare
	- ricerca del valore minimo in un array
			- _caso pessimo_: array decrescente, sarebbero $2n$ operazioni (per gli `if`), quindi $O(n)$
			- _caso ottimo_: array crescente, sarebbero $n$ operazioni, quindi $O(n)$
			- _caso medio_: sempre $O(n)$, schiacciato tra caso pessimo e caso ottimo
			- in realtà: non c'è distinzione tra caso ottimo, caso pessimo e caso medio, perché il ciclo `for` viene sempre eseguito $n$ volte (e analizzando il comportamento asintotico non ci importa dell'`if`)
			- in definitiva ha una complessità compiutazionale (generale) di $O(n)$, ma potremmo essere più precisi dicendo $\Theta(n)$ --> **il costo è lineare**
		- esercizi `Mistery1` e `Mistery2`, come esempi di esercizi d'esame
			- rifarli a casa
			- <u>attenzione</u>: spesso si fa confuzione nel trovare la condizione per il caso ottimo
				- se $n = 0$ si può pensare che il caso ottimo abbia costo costante, ma _questo non è il caso ottimo_
					- il caso ottimo non è formulato sulla dimensione di $n$, ma su una condizione di un _input generico_ $n$
					- quindi il caso ottimo deve valere per ogni dimensione $n$
	- prossimi giorni facciamo tecniche per calcolare complessità di algoritmi ricorsivi, poi Java
	- analisi ammortizzata
		- è un metodo per valutare il costo medio di una sequenza di operazioni
			- finora abbiamo valutato caso ottimo, pessimo e medio
			- ma in altri casi queste analisi non sono sufficienti --> gli algoritmi possono avere comportamenti molto strani
			- l'analisi ammortizzata è un nuovo approccio per cercare di catturare la complessità di un algoritmo
		- non ci sarà chiesta all'esame, perché è difficile
		- differenza tra costo ammortizzato e costo medio
			- **costo medio**: costo medio di una _singola operazione_
			- **costo ammortizzato**: costo medio di una _sequenza di operazioni_
		- motivazioni:
			- per alcuni algoritmi una data operazione può essere molto costosa in alcune situazioni e molto efficiente in altre
				- l'analisi del caso pessimo può essere troppo pessimistica
				- l'analisi del caso medio necessità di assunzioni probabilistiche difficili da formulare
				- esempio [[Strutture Union-Find|strutture union-find]]
			- in genere il costo ammortizzato funziona bene con [[Puntatori e strutture dati Dinamiche|strutture dati]] 
		- esempio: algoritmo che implementa un contatore binario
			- ci chiediamo complessivamente quanto costano $n$ chiamate dell'algoritmo
				- perché nei singoli casi cambia molto!
					- se infatti vogliamo passare dal numero 6 al numero 7 il costo è 1;
					- se invece vogliamo passare dal 7 al 8 il costo diventa 4.
					- l'operazione di incremento potrebbe diventare molto costosa
			- quindi, applicate in sequenza quanto è? scopriremo che l'algoritmo ha un costo ammortizzato costante
			- ![[Screenshot 2024-02-27 at 11-04-59 Notazione asintotica - 02 - Notazione asintotica.pdf.png]]
			- guardiamo i casi
				- _caso ottimo_: $O(1)$
				- _caso pessimo_: $O(k)$
				- 
			- ora con l'analisi ammortizzata
				- 2 tecniche
					- **metodo dell'aggregazione**: determiniamo un limite superiore al costo totale di una sequenza di $n$ operazione e dividiamo per $n$
					- **metodo degli accantonamenti**: metodo basato sulla contabilità
						- assegniamo un costo ammortizzato ad ogni operazione
						- ogni operazione viene addebitata con il suo costo ammortizzato
						- dopo ogni operazione salviamo come credito la differenza tra il suo costo ammortizzato e costo reale
						- accumuliamo il credito collezionato durante l'esecuzione
						- se il costo reale è più alto del costo ammortizzato usiamo il credito
						- il costo ammortizzato è corretto se il credito non è mai negativo
					- sono due metodi alternativi, ognuno può essere più o meno adatto ad un problema
				- esempio per entrambe le tecniche: spese mensili
					- il metodo dell'aggregazione è una sorta di media
					- il metodo degli accantonamenti è una figata, ma attenzione: bisogna sempre specificare il "punto di partenza", che nel caso degli algoritmi sarebbe la struttura di partenza
				- applichiamo l'aggregazione per il contatore binario
					- l'idea è di sommare i costi per cambi di bit, esprimiamo con una sommatoria tutte le modifiche dei bit
						- il $k$-esimo bit è cambiato ad ogni incremento
						- il $k-1$-esimo bit è cambiato ogni 2 incrementi
						- il $k-2$-esimo bit è cambiato ogni 4 incrementi
						- e così via
					- quindi il costo totale è $n + \frac{n}{2} + \frac{n}{4} + \frac{n}{8} + \cdots + \frac{n}{2^{k-1}} = \sum\limits_{i=0}^{k-1} \frac{n}{2^{i}} \leq n \sum\limits_{i=0}^{\infty} \frac{1}{2^{i}} = n \frac{1}{1-\frac{1}{2}} = 2n = O(n)$
					- se dividiamo ora questo costo per $n$ otteniamo $\frac{2n}{n} = \frac{O(n)}{n} = O(1)$
					- il _costo ammortizzato è costante_
				- applichiamo ora il metodo degli accantonamenti
					- anche in questo caso il costo ammortizzato è costante