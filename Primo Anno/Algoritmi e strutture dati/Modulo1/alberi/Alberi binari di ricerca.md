---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- Gli alberi binari di ricerca (_BST_) sono alberi binari con vincoli sull'organizzazione delle chiavi. Come caratteristica più importante hanno che: _permettono una ricerca binaria sulla struttura [[Alberi e Alberi binari||albero binario]]_ 
- le operazioni di: _search, insert e delete_ hanno costo proporzionale all'altezza del'albero.
- ## DEF:
	- 1) Albero binario.
	- 2)Ogni nodo __v__ contiene una chiave confrontabile __v.key__ e dei dati __v.data__ associati alla chiave.
	- 3)_Proprietà di ordinamento_: tutte le chiavi nel sotto-albero sx di __v__ sono $\leq$ __v.key__ e tutte le chiavi nel sotto-albero dx di __v__ sono $\geq$ __v.key__ 
- ## Operazioni
	- `search(T,k)`: ritorna il nodo con chiave __k__ in __T__ oppure __NIL__
	- `insert(T,k,d)`: inserisce in __T__ e ritorna il nodo __(k,d)__
	-  `delete(T,k)`: rimuove da __T__ e ritorna il nodo con chiave __k__
		- quest'ultima operazione richiede delle operazioni di supporto:
			- `Max(T)`: ritorna il nodo con chiave massima 
			- `Min(T)`: ritorna il nodo con chiave minima 
			- `Predecessor(T)`: ritorna il nodo che precede __T__ quando i nodi sono ordinati rispetto ad una visita in-ordine
				- Se le chiavi sono tutte diverse, è uguale al nodo avente la chiave più grande __k__ < __T.key__
				- __NIL__ se __T.key__ è la chiave minima
			- `Successor(T)`: simmetrico a _predecessor_
- ## Implementazioni:
	- ### Search:
		```java
		function search(BST T, Key k) → Node
			tmp = T.root
			while tmp != NIL do
				if k == tmp.key then
					return tmp
				else if k < tmp.key then
					tmp = tmp.left
				else
					tmp=tmp.right
			return NIL
		```
		- ritorna il primo nodo con chiave __k__
		- _Costo caso ottimo_: $O(1)$ ovvero quando la radice ha chiave __k__
		- _Costo caso pessimo_: $\Theta(h)$
			- $h =$ l'altezza dell'albero
			- N.B: $h=O(n)$ , $n=$ numero nodi in $T$ 
	- ### Insert: ^f08b19
	```java
	function insert(BST T, Key k, Data d) 
		node=Node(k,d), prev=NIL, curr=T.root
		while curr̸ = NIL do  ▷Search position
			 prev = curr
			 if k<curr.key then
				 curr = curr.left
			 else
				 curr = curr.right
		if prev == NIL then   
			 T.root = node
		 else ▷ The tree is not empty
			 node.parent = prev
			 if k<prev.key then prev.left = node
			 else prev.right = node
		 return node	  
	```
	- _caso pessimo_: $\Theta(h)$
		- Ricerca posizione: $\Theta(h)$
		- inserire il nodo: $O(1)$
	- _caso ottimo_: $O(1)$
		- Ricerca posizione: $O(1)$
		- inserire il nodo: $O(1)$
	- ### MAX E MIN:
	```java
		function max(Node T) → Node
			while T != NIL && T.right != NIL do
				T=T.right
			return T
			
		function min(Node T) → Node
			while T != NIL && T.left != NIL do
				T=T.left
			return T
	```
	- dato il sotto-albero $T$
		- il nodo massimo in $T$ è il _nodo più a destra_ in $T$
		- il nodo minimo in $T$ è il _nodo più a sinistra_ in $T$
	- Entrambe le funzioni hanno lo stesso costo:
		- _caso ottimo_: $O(1)$ ($T$ non ha figlio destro o sinistro)
		- _caso pessimo_: $\Theta(h)$ 
	- ### Predecessor:
	```java
		function predecessor(Node T) → Node
			if T == NIL then
			  return NIL
			else if T .left != NIL then ▷ Caso 1
				return max(T.left)
			else                        ▷ Caso 2
				P=T.parent
				while P!=NIL && T==P.left do
					T=P
					P=P.parent
				return P
	```
	- _Caso pessimo_:
		- Caso 1: $\Theta(h)$
		- Caso 2: $\Theta(h)$
	- _Caso ottimo_:
		- Caso 1: $O(1)$
		- Caso 2: $O(1)$
	- ### Delete
		- _Caso 1_: 
			- il nodo da rimuovere è una foglia; in tal caso semplicemente si rimuove quel nodo
			- Ciò mantiene la correttezza dell'albero
		- _Caso 2_:
			- Il nodo da rimuovere ha un solo figlio:
				- in questo caso il nodo figlio __u__ diventa il nodo figlio(dx o sx in base alla chiave) del genitore __p__ e poi il nodo da eliminare viene eliminato 
			- viene mantenuta la correttezza dell'albero
		- _Caso 3_:
			- Il nodo __v__ da rimuovere ha 2 figli:
				- cerco il predecessore __u__ di __v__
				- copio __v.key__=__u.key__ (e dati)
				- il nodo __u__ ha al massimo un figlio(?)  
				- rimuovo il nodo __u__ (caso 1 o 2)
			- La correttezza dell'albero viene mantenuta
		```java
		function delete(BST T ,Key k)
			v=search(T,k)
			if v!= NIL then
				if v.left!=NIL && v.right!=NIL
					u=predecessor(v)
					swap(v,u)
					v=u
				disconnect(T,v)
			return v 	
		```
		- questa procedura rimuove il nodo dall'albero ma non azzera i riferimenti ai figli e al padre 
			- il riferimento al padre è utile per gli [[Alberi AVL]]
		- la funzione _disconnect_ gestisce solo i casi 1 e 2
			- eventualmente aggiorna la radice dell'albero.
	- ### Disconnect
	```java
		function disconnect(BST T, Node v)
			p = v.parent
			if v.right == NIL then c = v.left
			else c = v.right
			if p!=NIL && p.left ==v then 
				p.left = c
			else if p!=NIL && p.right == v then 
				p.right = c
			else
				T.root = c
			if c!=NIL then c.parent = p
	```
	- __p__ punta al padre di __v__ e __c__ al suo eventuale figlio
	- _disconnect_ gestisce solo i casi 1 e 2
	- i casi 1 e 2 richiedono un numero costante di operazioni
	- N.B: il campo padre del nodo __v__ non viene modificato
- ## Analisi del caso medio
	- Nel caso pessimo tutte le operazioni su _BST_ hanno costo $\Theta(h)$
		- il costo medio dipende dall'altezza media $\overline{h}$ di un BST 
	- L'altezza $h$ di un BST può variare di molto
		- l'altezza _massima_ di una BST con $n$ nodi è $h=\Theta(n)$ 
			- Un BST con altezza $h$ ha almeno $h+1$ nodi
		- L'altezza _minima_ di un BST con $n$ nodi è $h=\Theta(\log n)$
			- Un BST con altezza $h$ ha al massimo $2^{h+1}-1$ nodi 
	- L'altezza media $\overline{h}$ di un BST
		- Caso "facile": BST costruito da $n$ inserimenti casuali 
			- $\overline{h}=O(\log n)$