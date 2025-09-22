
Una coppia ordinata è formata da due componenti di cui uno viene identificato come primo elemento e l'altro come secondo; due coppie sono uguali sse lo sono rispettivamente il primo e il secondo elemento. N.B. una coppia non deve essere considerata come un contenente dei suoi elementi (nel senso di $\in$).
Es: $\langle 1, 2\rangle \ne \langle 2, 1\rangle$, $\langle 1, 2\rangle \ne \{1, 2\}$ e $2 \not \in \langle 1, 2 \rangle$ 

# Coppie
Dati X e Y è coppia ordinata di primo elemento X e secondo elemento Y indicato con $\langle$X, Y$\rangle$ l'insieme {X, {X,Y}}

##### Teorema di caratterizzazione delle coppie
$$\langle X,Y \rangle = \langle X',Y' \rangle \Leftrightarrow X=X' \ \wedge Y=Y'$$

es:
$\langle 1, 2 \rangle$ = $\langle X, Y\rangle$ --> {1, {1,2}}={X, {X,Y}} 

due possibilità:
- X=1 $\wedge$ {X, Y}={1,2}  --> quindi Y=2
- X={1,2} $\wedge$ {X, Y}=1 --> assurdo X contiene 1 ma {X, Y}=1 


### Teorema del prodotto cartesiano:
$$∀A, ∀B, ∃C, ∀Z,(Z ∈ C \Leftrightarrow ∃a, ∃b,(a ∈ A ∧ b ∈ B ∧ Z = \langle a, b\rangle))
$$
L'insieme C è il prodotto cartesiano di A e B (A x B) 

Es: {a, b} × {1, 2} = {$\langle$a, 1$\rangle$,$\langle$a, 2,$\langle$b, 1$\rangle$,$\langle$b, 2$\rangle$}

Teorema: $A\times\emptyset=\emptyset$
Dim: Sia A un insieme, per [[Assiomi#^ea5026||estensionalità]] dimostro $\forall Z (Z \in A \times\emptyset \Leftrightarrow Z \in \emptyset)$ sia Z un insieme:
- Dimostro $Z\in \emptyset$ $\Rightarrow$ $Z\in A\times\emptyset$ ; 
- $Z\in A\times\emptyset$ $\Rightarrow$ Z$\in$ $\emptyset$, suppongo: $Z\in A\times\emptyset$, quindi per il prodotto cartesiano $\exists a,b.(a\in A \wedge b\in \emptyset \ \wedge \ Z=\langle a,b\rangle)$. Quindi siano a e b insiemi tali che $a\in A$(H1) e $b \in \emptyset$(H2) e Z=$\langle a, b\rangle$ dimostro Z$\in$ $\emptyset$ da H2 e quindi assurdo per [[Assiomi#^d365cf||assioma del vuoto]] 



la collezione delle funzioni con dominio A e codominio B forma un insieme; spazio delle funzioni da A a B: $B^A$

es: 
A={0,1,2}   B={0,1}     $B^A$= $2^3$=8

A/B f0 f1 f2 ....   f7
0     0   0  0        1
1     0   0  1        1
2     0   1  0        1

esiste va con l'AND e il per ogni va con l'implica; 

una relazione di ordine stretto: ha proprieta transitiva ma non riflessiva come il <; 


insieme quoziente :
infinità di classi equivalenza 
 A/≡ {[1], [2], [3]....}
 ![[Pasted image 20231011144703.png]]

A/≡ ha le stesse classi equivalenza di A che però ora sono suoi elementi e non più sottoinsiemi di A.

### Cardinalità
^0c58aa
Ci dice il numero di elementi(viene indicato con il numero cardinale adatto); due insiemi hanno la stessa cardinalità sse c'è una biiezione tra di loro, il che è una 'relazione di equivalenza', quindi è simmetrica e transitiva
![[Pasted image 20231012093226.png]]

indichiamo con un numero naturale il numero di elementi all'interno di un insieme;

{n/pari(n)} $\in$ [N] ovvero {n/pari(n)} $\equiv$ [N] ovvero esiste una f $\in$ {n/pari(n)}^N; f è una biiezione.

N           {n/pari(n)}         iniettiva e suriettiva
0                   0
1                   2
2                   4


i numeri cardinali creati sono però delle classi, ma si possono definire in modo diverso per renderli degli insiemi. 

Un insieme A si dice infinito quando è in biiezione con un suo sottoinsieme proprio


![[Pasted image 20231012102414.png]]


dimostrare che alcuni infiniti sono più grandi di altri.

teorema: la cardinalità dei numeri R è maggiore di di quella di $\aleph$.
dimostro  $|[0,1]| > \aleph$ 

per assurdo sia $g\in [0,1]^N$ .


per dire che un insieme è  numerabile se è possibile elencare tutti i suoi elementi; un insieme è rappresentabile nella memoria del computer solo se è numerabile.

le funzioni matematiche non sono numerabili e quindi non rappresentabili al meglio sui calcolatori.


