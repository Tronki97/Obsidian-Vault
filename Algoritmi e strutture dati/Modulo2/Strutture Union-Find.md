- è una collezione di insiemi $S=\{S_{1},...,S_k\}$ dinamici disgiunti
- Gli insiemi contengono n$\geq$ k elementi
- Ogni insieme ha un rappresentante 
- Gli elementi di ogni insieme sono unici e appartengono ad un solo insieme.
- #### Operazioni
	- makeset(Data x):
		- crea un insieme il cui unico elemento (e rappresentante) è x 
		- x non deve appartenere a nessun altro insieme esistente 
	- find(Data x):
		- restituisce il rappresentante dell' unico insieme contenente x(un insieme).
	- union(Set x, Set y):
		- unisce i due insiemi x e y
		- si assume che l'insieme risultato si chiami x
		- i vecchi insiemi vengono distrutti

Per sapere se due dati sono "collegati" faccio l'uguaglianza tra find(x)e find(y) e se il risultato è lo stesso allora sono collegati.

- #### Algoritmi 
	- QuickFind:
		- makeset(), find(): $O(1)$, union():$O(n)$
	- QuickUnion:
		- makeset(), union(): $O(1)$, find:$O(n)$
- ##### Rappresentazione
	- Ogni insieme è rappresentato con un albero di altezza 1 
	- le foglie contengono gli elementi dell'insieme 
	- la radice è il rappresentante

- #### QuickFind
	- ##### Operazioni 
		- makeset(x): crea un albero con unica foglia x che ne è anche rappresentante; costo: costo: $O(1)$
		- find(x):restituisce il puntatore al padre di x; costo: $O(1)$
		- union(A, B): tutte le foglie di B vengono spostate in A costo pessimo: $O(n)$ n è il numero complessivo di elementi di A e B 
			- nel caso peggiore B ha n-1 elementi (quindi con tanti puntatori da spostare in A) 
	- ##### Euristica sul peso
		- memorizzare nella radice il numero di elementi dell'insieme; la dimensione può essere mantenuta con costo costante 
		- appendere l'insieme con meno elementi a quello con più elementi   
		- ![[Screenshot 2024-04-04 at 10-00-52 Union-Find - 12-UnionFind.pdf.png]]
		- OSS:
			- ogni volta che una foglia acquista un nuovo padre farà parte di un insieme con almeno il doppio di elementi rispetto a quello in cui era prima.
			- ogni foglia cambia il proprio padre al più $log \ (n)$ di volte 
		- OSS2:
			- nel caso pessimo durante una esecuzione di union, fino a n/2 elementi possono cambiare padre 


- #### QuickUnion ^9be1ea
	- ##### Implementazione basata su foresta
		- ogni insieme è un albero radicato generico
		- ogni nodo contiene:
			- l'oggetto 
			- il puntatore al padre 
		- il rappresentante è la radice
	- Operazioni
		- makeset(x):
			- crea albero con unico nodo x
			- costo costante 
		- find(x):
			- risale la lista dei padri di x fino a trovare la radice e restituisce la radice come rappresentante 
			- costo: $O(n)$ nel caso pessimo
		- union(A, B):
			- unisce l'albero B ad A rendendo la radice di B una figlia della radice di A
			- costo costante
	- ##### Euristica "union by rank"
		- rendere la radice dell'albero più basso figlia della radice dell'albero più alto
		- ogni radice mantiene informazioni sul proprio rango
			- il rango rank(x) di un nodo x è il numero di archi del cammino più lungo fra x e una foglia discendente 
			- rango $\equiv$ altezza del sottoalbero radicato sul nodo 
		- Proprietà:
			- un albero QuickUnion con euristica sul rango con x come radice ha $n\geq 2^{rank(x)}$ nodi 
		- usando questa euristica find() ha costo $O(log \ n)$ nel caso pessimo


- #### Utilizzo 
	- usare QuickFind quando le `union()` sono rare e le `find()` frequenti 
	- usare QuickUnion quando le `find()` sono rare e le `union()` frequenti 

visualizzatore: https://www.cs.usfca.edu/~galles/visualization/DisjointSets.html

