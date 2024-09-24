---
tags:
  - programmazione
---

collezione di nodi e archi 
- ogni nodo ha solo un predecessore  e vari successori, la radice non ha predecessori
- ogni nodo contiene un valore 
- esiste una sola strada per arrivare ad un nodo
- se un nodo non ha successori è una foglia
- il nodo esattamente prima di un altro è detto padre
- nodi sono detti fratelli se hanno lo stesso padre 
- la profondità è la lunghezza dalla radice al nodo.

### albero binario

```c++

struct btree{
	int val;
	btree* ltree;
	btree* rtree;
};

typedef btree* pbtree;

```

per ottenere una stampa iterativa dell'albero bisognerebbe tenere conto di tutti i sotto-alberi non visitati; un metodo sarebbe quello di accumulare istruzioni in una sorta di pila di record di attivazione:
![[Pasted image 20231129092214.png]]

``` c++
void visit(pbtree t)
{
    if (t != NULL) 
    { 
	    cout << t->val;
        visit(t->ltree);
        visit(t->rtree);
	}
}
``` 



``` c++ 
pbtree visita_it(pbtree tree)  
{  
    if(tree!=NULL)  
    {  
        pbtree tmp;  
        pstack p;  
        p=push(NULL, tree);  
        while(p!=NULL)  
        {  
            tmp=top(p);  
            p=pop(p);  
            cout<< tmp->val;  
            if(tmp->rtree!=NULL)  
            {  
                p=push(p, tmp->rtree);  
            }  
            if(tmp->ltree!=NULL)  
            {  
                p=push(p, tmp->ltree);  
            }  
        }  
    }  
}
```


Albero ordinato da destra a sinistra:

Stampa prefissa:  1 2 4 8 9 5 10 11 3 6 12 13 7 14 15
Stampa infissa: 8 4 9 2 10 5 11 1 12 6 13 3 14 7 15
Stampa postfissa: 8 9 4 10 11 5 2 12 13 6 14 15 7 3 1

![[Pasted image 20231130184535.png]]

```c++
pbtree crea_albero_base(int n, int v)  
{  
    pbtree tmp= new btree;  
    if (n==0)  
    {  
        tmp->val =v;  
        tmp->ltree= NULL;  
        tmp->rtree= NULL;  
        return tmp;  
    }  
    else  
    {  
        tmp->val =v;  
        tmp->ltree=crea_albero_base(n-1, (v*2));  
        tmp->rtree=crea_albero_base(n-1, (v*2)+1);  
        return tmp;  
    }  
}

```
