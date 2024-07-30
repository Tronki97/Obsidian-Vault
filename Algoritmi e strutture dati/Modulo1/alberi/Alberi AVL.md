
albero binario(quasi) perfettamente bilanciato
	un AVL con n nodi supporta il search, insert e delete con costo $O$(log n) nel caso pessimo. 
	le operazioni in questi AVL sono fatte in modo da bilanciare gli alberi quando si fa un insert o un delete.

##### Fattore di bilanciamento
$\beta(v)$ di un nodo v = altezza(v.left)-altezza(v.right)
ed è bilanciato in altezza se $|\beta(v)|\leq 1$ 


Proprietà degli AVL:
- altezza massima di un AVL
	- valutiamo altezza dell'albero bilanciato con sbilanciamento massimo.
	- albero di Fibonacci: ogni nodo u non foglia ha $|\beta(u)|=1$ 
- $n_h$ numero di nodi di un albero di fibonacci altezza h
	- $n_h=n_{h-1}+n_{h-2}+1$ ; il numero di nodi di un albero di Fibonacci di altezza h è:
		- $n_h=F_{h+3}-1$ dove $F_k$ è il k-esimo numero di Fibonacci.

- visualizzatore albero AVL:
	- https://www.cs.usfca.edu/~galles/visualization/AVLtree.html


