---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- ## DEF:
	- composto da:
		- nodi
		- archi che connettono i nodi 
		- c'è un solo percorso per andare da un nodo ad un altro.
	-  è ordinato se i figli di ogni nodo sono ordinati
	- Le foglie sono nodi senza figli. Da ogni nodo si può identificare sotto-albero sx e dx. ^d80a92
	- _Profondità_:
		- lunghezza del percorso che va dalla radice al nodo foglia(radice sta a 0 e albero vuoto -1)
	- _livello_: insieme di nodi alla stessa profondità.
	- _altezza_: profondità massima 
	- _grado_: di un nodo è il numero dei suoi figli.
- ## TH:
	- Ogni albero non-vuoto con n nodi ha esattamente n-1 archi. 

- #### Albero binario quasi perfetto ^36b3d9
	- albero perfetto fino al livello h-1
	- tutti i nodi a livello h sono compattati a sinistra 
#### Algoritmi di Visita:
- In _profondità_( _DFS_ ):
	- va a profondità massima di un nodo dello stesso livello poi passa al successivo sempre dello stesso livello((pre, post, in)-ordine)
- In _ampiezza_(_BFS_):
	- ricerca eseguita livello per livello.


tutti e tre i metodi di ricerca in profondità per alberi binari hanno come costo $\Theta (n)$ perché non si calcola mai il costo di una struttura dati vuota.

- ## Implementazione in [[Java]] 
	- ### pseudocodice:
	- ### DFS
		```pseudo
		function preorder(Node T )
			 if T != NIL then
				 visit(T)
				 preorder(T.left)
				 preorder(T.right)
		```
		- per cambiare il tipo di DFS basta cambiare l'ordine delle chiamate ricorsive.
	- ### BFS
	```
	 function BFS(Tree T)
		 Q = Queue()
		 if T.root != NIL then
			 enqueue(Q,T.root)
		while Q.size != 0 do
			 x = dequeue(Q)
			 visit(x)
			 if x.left != NIL then
				 enqueue(Q,x.left)
			 if x.right != NIL then
				 enqueue(Q,x.right)
	```

