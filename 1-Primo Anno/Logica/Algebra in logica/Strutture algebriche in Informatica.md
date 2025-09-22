quando si risolve un equazione con variabile x il verificarsi di essa dipende dal domino a cui appartiene x, 

Se al posto delle costanti si utilizzassero dei simboli L’esistenza di una soluzione dipende da come le operazioni coinvolte si comportano sugli elementi dell’insieme.
anche perché quei simboli potrebbero non essere numeri(es: stringhe , grafi ecc...);

L'algebra astratta:
- nasce per il bisogno di astrazione che permette di definire concetti a partire da caratteristiche che appartengono a oggetti concreti.
- un insieme unito alle operazioni che è possibile eseguire/definire su di esso.
tipi di algebra:
- Algebre di Boole
	strutt algebrica generica con operazioni che rispettano determinate proprietà
-  Gruppo
	strutt, con tre operazioni: binaria (a + b) , unaria (-a) , a zero posti(costante);
	un esempio può essere il cubo di Rubik(con le varie mosse) o l'orologio(con i movimenti della lancetta).
- Algebra di Hopf interacting
- quaternioni:
	- 

Concetti di astrazione 
- Interfaccia: un manuale di istruzioni per chi vuole utilizzare il codice o l'implementazione. 
- Generalizzazione : mettere in uso in maniera generale ciò che è stato fatto con degli oggetti in particolare.
	- Riuso: quelle fatte bene possono essere usate tante volte
	- Chiarezza: concetti complicati vengono semplificati il più possibile per la gestione da parte di altra gente.
	- decoupling: separare l'interfaccia dalla generalizzazione 
	- Correttezza: 

Tesi di Church-Turing:
un calcolo risolvibile da un linguaggio general-purpose può essere risolto da qualsiasi altro linguaggio di quel tipo. Quindi tutti i linguaggi hanno lo stesso potere espressivo.

#### Morfismo:

fra due strutt dello stesso tipo mappa gli elementi della prima in quelli della seconda rispettandone le proprietà e il modo di manipolarli es:
(N, +, 0) e (N, $*$, 1) ---> $2^0$=1 ---> lo zero (el neutro del primo) viene mappato in 1 (el neutro del secondo)


#### Isomorfismo:
Di due strutt è un morfismo dalla prima alla seconda che sia biettiva la cui inversa sia anche essa un morfismo. 

Due strutt sono isomorfe se c'è almeno un isomorfismo. Possono essere trattate essenzialmente come uguali.

es: ($R^{+}_{0},+,0$) e $(R^{+},*,1)$ 

$f(n)=e^n$  $h(n)=ln \ (n)$: f è l'inverso di h 


##### Monoide:

^f511a7

è una tripla con l'op binaria associativa:
$(\mathbb{A} , \circ , e)$  è un monoide se esso è un semigruppo ed "$e$" è l'elemento neutro del dell'operazione $\circ$ 
Es: $(\mathbb{N}, +, 0)$ 
in Haskell: 
```Haskell
class Monoid a where
op::a->a->a
e::a
--dove op è associativo, e elemento neutro 

instance Monoid Integer where 
op=(+)
e=0
```

##### Associatività: 
vuol dire che non importa l'ordine degli elementi dell'operazione se essa compare più di una volta, ovvero non importa mettere le parentesi
	ES:
		(5+8)+9=5+(8+9)=5+8+9

##### Magma:
$(\mathbb{A} , \circ)$ con $\circ$ di tipo $\mathbb{A} \times \mathbb{A} \rightarrow \mathbb{A}$
ES: $(\mathbb{Q}, /)$ è un magma ma non un semigruppo.

##### Semigruppo:

^1d2bec

$(\mathbb{A} , \circ)$ con $\circ$ Associativo 
	ES: $(\mathbb{N} , +)$ è un semigruppo abeliano.

##### Gruppo 

^9b8592

$(\mathbb{A} , \circ , e, .^1)$ è un gruppo se $(\mathbb{A}, \circ, e)$ è un monoide e:
$\forall x \in \mathbb{A}$     $x\  \circ \ x^{-1}= e = x^{-1} \circ x$

Una struttura si dice <font color="red">abeliana</font> se l'operazione è commutativa quindi: $x \circ y = y \circ x.$ ^abeb46

##### Sostegno 

^4712c2

L'insieme $\mathbb{A}$ usato in tutti questi casi è detto <font color="red">sostegno</font>


