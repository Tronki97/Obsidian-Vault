Strutture dati che restituisce il minimo in un insieme dinamico di coppie(chiave, elemento) ordinate secondo una relazione d'ordine definita sulle chiavi (ha più priorità la chiave con valore minore).

- #### Esempio di applicazione
	- Nel routing dei pacchetti in reti di comunicazione vengono processati i dati con priorità più alta(ad esempio i pacchetti audio nelle videoconferenze a discapito dei pacchetti video)
	- I pacchetti in ingresso possono essere mantenuti nella coda per processare quelli a priorità maggiore.
- #### Operazioni
	- findMin()
		- restituisce un elemento associato alla chiave minima.
			- costo computazionale $O(1)$
	- insert(D data, K key)
		- inserisce un nuove elemento data con associata chiave key.
			- Costo computazionale $O(log_{d}\ n)$ 
	- delete(D data)
		- rimuove elemento dalla coda(assumendo di avere accesso diretto al dato)
	- deleteMin()
		- rimuove un elemento associato alla chiave minima 
			- prende la foglia più a destra ad altezza h e la mette al posto del nodo cancellato e poi verifica se spostarla in basso o in alto(in base al valore della sua chiave)
			- costo: $O(log \ n)$.
	- increaseKey(D data, K key)
		- rimpiazza la chiave dell'elemento data con la nuova chiave k, (se k è MAGGIORE) (assumendo di avere accesso diretto al dato)
	- decreaseKey(D data, K key)
		- rimpiazza la chiave dell'elemento data con la nuova chiave k, (se k è MINORE) (assumendo di avere accesso diretto al dato) ma poi bisogna spostare il dato in base alla nuova chiave.
		- Costo $O(log \ n)$.
- ##### NOTA
	- le ultime due operazioni cambiano solo la priorità dell'elemento associato alla chiave in modo da farlo processare prima o dopo.

- #### Operazioni Ausiliarie
	- muoviAlto(v)
```java
	public static void muoviAlto(v)
	{
		while(v!=root(T)&&chiave(v)<chiave(padre(v)))
		{
			swap(T, v, padre(v));
			v=padre(v);
		}
	}
```
- #### Implementazioni
	- d-heap:
		- modifica della struttura [[Heap e le sue applicazioni#^2a5e2b||max-heap]] usata nell'[[Heap e le sue applicazioni#^247187||heapsort]]
	- Heap binomiali e Heap di Fibonacci
		- (non verranno trattati)

- #### D-heap 
	- modellato su albero d-ario
		- altezza h, perfetto fino alla profondità h-1 e al livello h le foglie sono accatastate a sinistra.
		- ogni nodo v contiene una _chiave(v)_ e un elemento _elem(v)_
		- ogni nodo diverso dalla radice ha chiave $\geq$ rispetto alla sua radice.
	- ##### Altezza di un d-heap 
		- un d-heap son n nodi ha altezza $O(log_{d}\ n)$ 
	- memorizzazione in un Array
		- l'ultimo figlio di un nodo in posizione i è in $(i*d)+1$ 
		- il primo figlio di un nodo in posizione i è in $((i-1)*d)+2$ (d-1 posizioni prima dell'ultimo figlio)
		- il padre di un nodo in posizione i è in $\frac{i-1}{d}$ arrotondando per eccesso 



link Utile: https://www.cs.usfca.edu/~galles/visualization/Heap.html