
studia le costruzioni dei teoremi che funzionano su qualunque [[Strutture algebriche in Informatica||struttura algebrica]] 

Semigruppo: significa che l'operazione è associativa 

es:
$\Sigma = {0,1}$  
$\Sigma^* =$ tutte le parole formate da 0 e 1, quindi i numeri binari.

## Anelli

##### Semianello: 
$(\mathbb{A}, \circ, e, *, e')$ lo è se $(\mathbb{A}, \circ, e)$ è un [[Strutture algebriche in Informatica#^f511a7||monoide]] [[Strutture algebriche in Informatica#^abeb46||abeliano]] e se $(\mathbb{A}, *, e')$ è un [[Strutture algebriche in Informatica#^f511a7||monoide]] 
E valgono le proprietà:
- Assorbimento di $e$ rispetto a $*$: $x*e=e=e*x$
- distributività del * rispetto al $\circ$  ES:$\forall x,y \ \  (x + y) ∗ z = xz + yz = z ∗ (x + y).$ 
ES: $(A, +, 0, *, 1)$  è un semianello 

##### Anello: 
$(\mathbb{A}, \circ, e,(.)^{-1}, *, e')$ è un anello se:
	$(\mathbb{A}, \circ, e, *, e')$ è un semianello
	 $(\mathbb{A}, \circ, e,(.)^{-1})$ è un [[Strutture algebriche in Informatica#^9b8592||gruppo]] [[Strutture algebriche in Informatica#^abeb46||abeliano]] 
## Costruzioni

##### Sottoinsieme chiuso:
Sia (A, ◦) un [[Strutture algebriche in Informatica#^1d2bec||semigruppo]] e B ⊆ A, B si dice chiuso rispetto a ◦ sse ∀x, y ∈ B. x ◦ y ∈ B


##### Sotto-struttura algebrica:
Data una struttura algebrica di [[Strutture algebriche in Informatica#^4712c2||sostegno]] A e un B ⊆ A, B forma una sotto-struttura algebrica della prima se tutte le operazioni sono chiuse rispetto a B e tutti le costanti della struttura appartengono a B.
ES: $\mathbb{P}$ =insieme numeri naturali pari. $(\mathbb{P}, +)$ è un sottosemigruppo di $(\mathbb{N}, +)$ perche tutte le operazioni + tra i numeri naturali pari appartengono all'insieme dei naturali.

#### Intersezione di sotto-strutture 
teorema: data una [[Strutture algebriche in Informatica||struttura]] di cui B, C sono sotto-strutture, allora $B\cap C$ lo sarà.
Dim: tutte le costanti della struttura stanno sia i B che in C e quindi sono nell'intersezione(dall'assioma dell'[[Assiomi#^7ce712||intersezione binaria]]). tutte le operazioni della struttura sono chiuse rispetto a B e C da cui segue:$$(\forall x,y \in \mathbb{B}\cap\mathbb{C}. x\circ y \in \mathbb{B}\cap\mathbb{C})$$
#### Unione di sotto-strutture 
L’unione di sottostrutture NON è (in generale) una sottostruttura.


#### Prodotto cartesiano di strutture algebriche 

il prodotto cartesiano di due strutture algebriche A e B: $A \times B$ è la struttura algebrica dello stesso tipo tale che:
	il sostegno è: $A \times B$.
	le costanti $e_{A\times B}$ sono coppie $\langle e_A,e_B \rangle$ di costanti corrispondenti nelle due strutture.
	le operazioni $\circ_{A\times B}$ agiscono applicando l'operazione corrispondente sugli elementi della coppia: $$\langle a_1,b_{1}\rangle \circ_{A\times B} \langle a_2,b_{2}\rangle = \langle a_{1}\circ_{A} a_{2}, b1 \circ_{B} b_2\rangle$$$\circ_A$ corrisponde all'operazione della strutt A
	$\circ_B$ corrisponde all'operazione della strutt B
	



### Immagini di morfismi

teorema:
sia "f" un morfismo da una [[Strutture algebriche in Informatica||strutt]] "A" a una "B". $imm(f)$ è una sotto-struttura di B.

un morfismo $f: A\rightarrow B$ può essere pensato come un modo per osservare sugli elementi di A delle proprietà di B

isomorfismo: un morfismo biettivo.