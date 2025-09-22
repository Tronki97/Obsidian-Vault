### Puntatori: 

^94436a

- tipo di dato degli indirizzi di memoria
	- gli indirizzi di memoria possono essere usati al posto delle variabili
	- es: se una variabile è salvata in 4 locazioni di memoria successive, l'indirizzo di memoria della prima locazione può essere usato al posto della variabile
- con puntatori è possibile definire e creare strutture dati di dimensioni non note(==Variabili dinamiche==)  
### Dichiarazione di puntatori
![[Pasted image 20231103124542.png]]
### Operazioni sui puntatori:
un puntatore punta solamente a indirizzi che contengono elementi di un certo tipo; essi sono un tipo di dato parametrico, cioè dipendono dal tipo di elemento a cui puntano.
- NULL(puntatore vuoto): ha valore 0 e può essere assegnata a qualunque puntatore.
```c++
int *p
char *q, r;
p=NULL;
q=NULL;
if(p==NULL)...
r=NULL; //errore perchè r non è un puntatore 
```

- new (allocazione blocco di memoria): 
	- permette di allocare dinamicamente la memoria per una variabile di tipo puntatore 
		- prende in input un tipo e restituisce un puntatore ad un nuovo blocco di memoria che contiene elementi di quel tipo.
		- Suddivisione della memoria RAM:
			- heap: è l’area di memoria in cui sono allocati nuovi blocchi di memoria
			- stack: è l’area di memoria in cui vengono allocati i record di attivazione delle funzioni
		- new alloca memoria dall'heap. le celle di memoria allocate con "new" sono chiamate "==variabili dinamiche=="
			- l'area di memoria che esse occupano viene creata e distrutta mentre si esegue il programma
			- a differenza di quella delle variabili che vien stabilita alla compilazione, creata all'invocarsi della funzione e distrutta quando il programma o la funzione termina.
- * (dereferenziazione): 
	- lo si usa per accedere alla cella puntata, prende il [[#^94436a||puntatore]], restituisce l'indirizzo di memoria per accedere all'elemento puntato da esso:![[Pasted image 20231103130522.png]] 
- & (indirizzo di):
	-  applicato ad una lhs-expression (left hand side expression) restituisce il suo indirizzo di memoria che può essere assegnato ad un puntatore.![[Pasted image 20231103130746.png]]
- delete (deallocazione blocco di memoria):  ^92cef0
	- libera l'area di memoria puntata dall'argomento che deve essere un puntatore
		- quest'area potrà essere riutilizzata da successive chiamate a new
		- se un puntatore punta alla stessa area di memoria di uno a cui fai DELETE di conseguenza anche quel puntatore avrà il delete
		- delete non farà nulla se il puntatore in input è NULL
		- dopo l'utilizzo di delete il valore del puntatore è indefinito, quindi dopo conviene riassegnargli un valore 

### Definizione di nuovi tipi
si usa "typedef"

ez: 
```c++
#include <iostream>  
using namespace std;  
int main()  
{  
    int x=0;  
    typedef int* p_int;  
    p_int p =&x;  
    p_int q =&x;  
    //puntano all'indirizzo della variabile e        cio che contiene
    (*p)++;  
    (*q)++;  
    //il valore di ciò che sta dentro                all'indirizzo di x viene incrementato
    cout << x;  
}
```

## Strutture dati dinamiche
strutture dati le cui dimensioni possono essere estese o ridotte durante l'esecuzione del programma

#### le liste

^lista

sequenza di nodi in cui ogni nodo ,eccetto l'ultimo, punta al successivo tramite un puntatore 
	di solito è una "struct" ([[Strutture]]) con un campo che contiene un puntatore alla struttura stessa 
```c++
struct lista { 
int val ;
lista *next ; 
} ;
```
### MEMORY LEAKS
I nodi che sono persi assegnando i loro  puntatori ad altri nodi non possono essere recuperati; un programma che perde nodi ha un "memory leak"; 

per evitare che queste cose accadano si usa l'operazione [[#^92cef0||delete]] in questo modo: 
```c++
list rimuovi_el(list head)//e dealloca la memoria
{
	if(condizione per rimuovere)
	{
		list r= head; // r= nodo da rimuovere 
		head=head->next; // head= nodo succ
		delete r; 
	}
}
```

Questo procedimento è chiamato garbage collection.
### Iteratori
è un operatore che consente di eseguire operazioni a gruppi di dati aggregati un es può essere l'utilizzo di "i" in un for quando si opera in un [[Array]].
