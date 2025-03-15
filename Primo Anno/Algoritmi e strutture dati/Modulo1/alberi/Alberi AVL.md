---
tags: []
aliases:
  - fattore di bilanciamento
  - bilanciamento in altezza
data: "`2024-08-31 20:05`"
---
- # DEF:
	- albero binario(quasi) perfettamente bilanciato
		- un AVL con n nodi supporta il _search, insert e delete_ con costo $O(\log n)$ nel caso pessimo. le operazioni in questi AVL sono fatte in modo da bilanciare gli alberi quando si fa un insert o un delete.
- # Fattore di bilanciamento
	- fattore di bilanciamento di un nodo __v__ ($\beta(v)$):
	- $$\beta(v)  = \mathbf{altezza}(v.left)-\mathbf{altezza}(v.right)$$
- # Bilanciamento in altezza
	- un albero è bilanciato in altezza se per ogni nodo __v__ le altezze dei suoi sotto-alberi differiscono al massimo di uno$$|\beta(v)|\leq 1$$
- # Proprietà degli AVL:
	- altezza massima di un AVL
		- valutiamo altezza dell'albero bilanciato con sbilanciamento massimo.
		- albero di Fibonacci: ogni nodo __u__ non foglia ha $|\beta(u)|=1$ 
	- $n_h$ numero di nodi di un albero di Fibonacci altezza h
		- $n_h=n_{h-1}+n_{h-2}+1$ ; il numero di nodi di un albero di Fibonacci di altezza h è:
			- $n_h=F_{h+3}-1$ dove $F_k$ è il k-esimo numero di Fibonacci.
- # Mantenere il bilanciamento
	- la ricerca su un albero AVL sono effettuate come quelle su un [[Alberi binari di ricerca||BST]] 
	- _insert_ e _delete_ richiedono una modifica che permetta di mantenere il bilanciamento dell'albero.
		- ![[Pasted image 20240801142921.png]]
		- per verificare il bilanciamento ogni nodo __u__ deve mantenere informazioni sull'altezza del proprio sotto-albero (__u.height__)
			- ciò è importante per calcolarne il $\beta$
- # aggiornamento altezza e bilanciamento
	```java
	void updateheight(Node u)
		if(u!=null)
			lefth=-1, righth=-1;
			if (u.left!=null)
				lefth=u.left.height;
			if (u.right!=null)
				righth=u.right.height;
			u.height=Max(lefth,righth)+1;

	int balancefactor(Node u)
		lefth=-1, righth=-1;
		if (u!=null && u.left!=null) 
			lefth=p.left.height;
		if(u!=null && u.right!=null)
			righth=p.right.height;
		return lefth - righth;
	```
	- entrambe le operazioni hanno costo costante 
	- Update aggiorna l'altezza del nodo __u__
	- Balancefactor calcola il fattore di bilanciamento $\beta$ del nodo __u__
- # Rotazioni
	- ## Rotazione semplice
		- ![[Pasted image 20240801155913.png]]
		- preserva le proprietà di ordine dei BST
			- la chiave __u.key__ $\geq$ __v.key__ &&  __u.key__ $\ge$ di ogni chiave in $T_{1},T_{2}$
			- la chiave __v.key__ $\leq$ __u.key__ &&  __v.key__ $\le$ di ogni chiave in $T_{2},T_{3}$
		- una rotazione semplice modifica solo il fattore di bilanciamento di __u,v__
		- ### ES:
			- ![[Pasted image 20240801160344.png]]
	- ## Implementazione
		```java
			void rightrotate(AVL T, Node u)
				if(u!=null && u.left !=null)
					v=u.left;
					u.left=v.right;
					v.right=u;
					if(u.left!=null)
						u.left.parent=u;
					v.parent=u.parent;
					if(u.parent==null)
						T.root=v;
					else if(u.parent.left==u)
						v.parent.left=v;
					else
						v.parent.right=v;
					u.parent=v;
					updateheight(v);
					updateheight(u);
					
		```
		- Costo: $O(1)$
		- la funzione __leftrotate__ è simmetrica
- # Sbilanciamenti
	- esistono 4 casi di sbilanciamento, che avvengono in seguita a delle operazioni di inserimento o rimozione(il nodo __u__ è il nodo sbialnciato):
		- Sbilanciamento _SS_: $\beta(u)=2$ e $\beta(\mathbf{u.left})\ge 0$
			- per risolverlo si esegue una rotazione _destra_ con perno sul nodo __u__ 
		- Sbilanciamento _DD_: $\beta(u)=-2$ e $\beta(\mathbf{u.right})\le 0$
			- per risolverlo si esegue una rotazione _sinistra_ con perno sul nodo __u__ 
		- Sbilanciamento _SD_:$\beta(u)=2$ e $\beta(\mathbf{u.left})=-1$
			- per risolverlo ruotiamo a _sinistra_ con perno su __u.left__ così da ottenere uno sbilanciamento SS e si procede ruotando a _destra_ con perno su __u__ 
		- Sbilanciamento _DS_ :$\beta(u)=-2$ e $\beta(\mathbf{u.right})=-1$
			- per risolverlo ruotiamo a _destra_ con perno su __u.right__ così da ottenere uno sbilanciamento DD e si procede ruotando a _sinistra_ con perno su __u__  
	- ## Implementazione Bilanciamento:
	```java
		  void Balance(AVL T, Node u)
			  b=balancefactor(u);
			  if(b==2)
				  if(balancefactor(u.left)==-1)
					  leftrotate(T,u.left);
				  rightrotate(T, u);
			  else if(b==-2)
				  if(balancefactor(u.right)==1)
					  rightrotate(T,u.right);
				  leftrotate(T,u);
			  
	```
	- Costo: $O(1)$
- # Inserimento 
	```java
	Node insert(AVL T, key k, Data d)
		v=BSTinsert(T, k, d);
		p=v.parent;
		while (p!=null &&
		abs(balancefactor(p))!=2)
			updateheight(p);
			p=p.parent;
		if(p!=null)
			Balance(T,p)
		return v	
	```
	- [[Alberi binari di ricerca#^f08b19||BSTinsert]] costa nel caso medio/ottimo/pessimo $\Theta(\log n)$
		- l'altezza dell'albero AVL è $\Theta(\log n)$
		- l'albero risulta sempre bilanciato
	- Il ciclo while viene eseguito $O(\log n)$ volte 
		- al peggio, per tutti i nodi sul percorso da v fino alla radice.
	- vengono ri-aggiornate le altezze dei sotto-alberi
		- nel caso peggiore ciò deve essere fatto per tutti i nodi del percorso fino alla radice.
		- Costo: $O(\log n)$ 
	- Se un nodo risulta sbilanciato, occorre utilizzare la funzione per ribilanciarlo.
		- in un __insert__ abbiamo al massimo 1 nodo sbilanciato.
		- dopo il ribilanciamento non aggiorno le altezze
		- costo nel caso pessimo $O(1)$
- # Delete:
	```java
		Node delete(AVL T, Key k, Data d)
			v=BSTdelete(T, k);
			if(v!=null)
				p=v.parent
				while (p!=null)
					if(abs(balancefactor(p))==2)
						Balance(T, p);
					else
						Update(p);
					p=p.parent;
			return v
	```
	- si rimuove il nodo come per i [[Alberi binari di ricerca||BST]] che quindi richiede una ricerca
		- costo pessimo/medio: $\Theta(\log n)$
	- si riaggiornano le altezze dei sotto-alberi
		- nel caso peggiore ciò deve essere fatto per tutti i nodi del percorso fino alla radice.
		- Costo caso pessimo: $\Theta(\log n)$ 
		- Costo caso medio:$O(\log n)$
	- Se un nodo risulta sbilanciato, occorre utilizzare la funzione per ribilanciarlo.
		- facendo il delete possiamo avere più di un nodo sbilanciato
		- Costo caso pessimo: $\Theta(\log n)$ 
		- Costo caso medio:$O(\log n)$
- ## Link utili 
	- visualizzatore albero AVL:
		- https://www.cs.usfca.edu/~galles/visualization/AVLtree.html


