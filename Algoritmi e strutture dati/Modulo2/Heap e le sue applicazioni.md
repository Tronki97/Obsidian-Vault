- #### Heap Binari
	- un albero binario [[Alberi e Alberi binari#^36b3d9||quasi perfetto]] (perfetto fino al livello h-1) è un albero max-heap sse: 
		- ad ogni nodo i viene associato un valore$A[i]$ 
		- $A[parent(i)]\geq A[i]$
		  
	- invece è min-heap sse:
		- ad ogni nodo i viene associato un valore$A[i]$ 
		- $A[parent(i)]\leq A[i]$

- #### Array heap 
	- un albero binario heap si può rappresentare come array heap
		- Contiene:
			- Array A di lunghezza A.length
			- dimensione di A.heapsize $\leq$ A.length 
		- Organizzazione
			- $A[1]$ contiene la radice
			- Parent(i)= Math.floor(i/2) (arrotondamento per difetto)
			- Left(i)= $2*(i)$ 
			- Right(i)=$2*i+1$ (cella dopo Left(i))
		- Gli elementi nell'Array vengono rappresentati come la visita in ampiezza dell'albero da cui arrivano.
		  
		- Per vedere se esiste il figlio destro o sinistro di un nodo si verifica che l'indice ottenuto dai calcoli non super l'heapsize(ovvero l'indice dell'ultimo elemento dell'array)

- #### Operazioni su Array heap
	- findMax: individua il valore massimo contenuto in un heap
		- il massimo è sempre la radice, $A[1]$
		- l'operazione ha costo $\Theta(1)$
	- fixHeap: Ripristina la proprietà di max-heap 
		- Suppongo di rimpiazzare la radice di un max-heap con un valore qualsiasi
		- Voglio fare in modo che $A[]$ diventi nuovamente un heap
	- heapify: Costruisce un heap a partire da un array privo di ordine.
	- deleteMax: Rimuove l'elemento massimo(radice) da un max-heap $A[]$ 


- L'heap lo implementiamo tramite un array


- #### Heapsort  ^247187
	- costruire un max-heap a partire da un array usando heapify. ^2a5e2b
	- estrarre il massimo(findMax + deleteMax)
	- inserisco il massimo in ultima posizione di $A[]$
	- ritorno al punto 2 finche l'heap diventa vuoto. 