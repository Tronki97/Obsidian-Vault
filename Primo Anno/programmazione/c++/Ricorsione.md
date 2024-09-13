la programmazione ricorsiva  si avvicina di più alla matematica, non ci sono assegnamenti di memoria, 

```c++
p_lista mlt_rmv_ric(p_lista h, int n)
{
	if(h==NULL) 
	{
		return NULL;
	}
	else if((h->value)%n==0)
	{
		return mlt_rmv_ric(h->next, int n);
	}
	else
	{
		h->next= mlt_rmv_ric(h->next, int n);
		return h;
	}
}

```
1) controllo se la lista è alla fine o vuota
2) controllo se il valore è multiplo di n
	- se si
		- - ritorno la ([[Funzioni  e Dichiarazioni||funzione]]) stessa ma con la lista che punta al val successivo e si riparte dal punto 1.
	- se no
		- controlla il val successivo nella lista sempre invocando la [[Funzioni  e Dichiarazioni||funzione]]. 
3) La funzione termina fino a che [[Puntatori e strutture dati Dinamiche#^listo ||lista]] la non termina.

genericamente la funzione continua finche non arriva ad un "caso elementare" dove poi verrà eseguito e la funzione terminerà. una [[Funzioni  e Dichiarazioni||funzione]] che non raggiunge questo caso non terminerà mai e il programma finirà per dare errore: "out of memory". 

un esempio del fatto che la ricorsione è la più vicina alla matematica è la funzione fattoriale:
```c++
int fact(int n)  
{  
    if(n==0)  
    {  
        return 1;  
    }  
    else  
    {  
        return (n * fact(n-1));  
    }  
}
```
La funzione si avvicina alla definizione di fattoriale che è:
$f(x)=n * (n-1)!$ 

Mergesort
```c++


```


$\sigma == \epsilon$ stampa null
$\sigma == a.\sigma^1$  stampa $\sigma^1$

search_el($\sigma,el$) : 
$\sigma == \epsilon$ stampa false
$\sigma == a.\sigma^1$ , $a==el$  stampa true
$\sigma == a.\sigma^1$ $a\not=el$ search_el($\sigma^1,el$) 

n_rmv($\sigma,el$):
$\sigma == \epsilon$ stampa $\epsilon$

$\sigma == a.\sigma^1$ , a % el = 0  stampa n_rmv($\sigma^1 ,el$)

$\sigma == a.\sigma^1$ , a % el != 0  stampa a.n_rmv($\sigma^1 ,el$):
	h->next= n_rmv(h->next, el);

```c++
p_lista multiple_remove_ric(p_lista h, int n) 
{ 
if (h == NULL) 
{
return(NULL) ; 
}
else if ((h->val) % n == 0) 
{
return (multiple_remove_ric(h->next, n)) ;
}
 else 
 { 
 h->next = multiple_remove_ric(h->next, n);
 return(h); 
 } 
 }

```



invert($\sigma$):
$\sigma == \epsilon$ stampa $\epsilon$
$a.\sigma^{1} == \epsilon$ stampa $\sigma^{1}$ 
$\sigma==a.\sigma^{1}$
