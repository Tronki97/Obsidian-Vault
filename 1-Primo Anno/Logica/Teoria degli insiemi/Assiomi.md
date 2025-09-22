Un assioma è un ipotesi che assumiamo: può essere vera o falsa, ma siamo interessati solo alle situazioni in cui vale.


#### Assioma dell'estensionalità:

^ea5026

due insiemi sono uguali sse hanno gli stessi elementi
$$\forall X,\forall Y,(X=Y \Leftrightarrow \forall Z.(Z\in X\Leftrightarrow Z\in Y))$$

#### Assioma di separazione:
dato un insieme, possiamo formare il sottoinsieme dei suoi elementi che soddisfano una proprietà.
$$\forall X,\exists Y, \forall Z,(Z\in Y \Leftrightarrow Z\in X \ \wedge P(Z)) $$

#### Assioma dell'insieme vuoto:

^d365cf

$\exists X, \forall Z, Z \not\in X$  L'insieme X è indicato con $\emptyset$   $\forall Z, Z\not \in \emptyset$


##### Intersezione binaria:

^7ce712

$$A\cap B == \{ X\in A \ |\  X\in B\}$$
Teorema:
$$X \in A\cap B \Leftrightarrow {X\in A \ \wedge \  X\in B}$$
#### Assioma dell'unione
Dato un insieme di insiemi, esiste l'insieme che ne è l'unione.
$$\forall F, \exists X,\forall Z, (Z\in X \Leftrightarrow \exists Y,(Y\in F \wedge Z \in Y)) $$

##### Teorema dell'unione binaria:
$$\forall A,\forall B, \exists X,\forall Z, (Z\in X \Leftrightarrow Z\in A \vee Z \in B) $$
Sostituendo X con $A \cup B$ abbiamo:
$$\forall A,\forall B,\forall Z, (Z\in A \cup B \Leftrightarrow Z\in A \vee Z \in B) $$

#### Assioma dell'inclusione(sottoinsieme)
$$\forall A, B. \  A\subseteq B\Leftrightarrow(\forall Z. Z\in A\Rightarrow Z\in B ) $$


#### Assioma del Singoletto
$$\forall X, \exists Y, \forall Z, (Z\in Y \Leftrightarrow Z=X)$$
L'insieme Y viene indicato come {X} e l'assioma come
$$\forall X, \forall Z, (Z\in \{X\}\Leftrightarrow Z=X)$$
#### Assioma dell'infinito
Esiste un insieme che contiene almeno tutti gli encoding dei numeri naturali:
$$\exists Y, (\emptyset \in Y  \ \wedge \forall N, (N\in Y \Rightarrow N\ \cup \{N\} \in Y))$$

#### Assioma dell'insieme potenza 
Esiste l'insieme dei sottoinsiemi di un insieme dato.
$$\forall X, \exists Y, \forall Z, (Z\in Y \Leftrightarrow Z\subseteq X)$$indichiamo Y come $2^{X}\ \ o\ \   P(X)$  (insieme potenza o insieme delle parti).
Es: $$2^{\{1,2\}}=\{\emptyset, \{1\}, \{2\},\{1,2\}\}$$
#### Assioma di regolarità
Ogni insieme non vuoto ha un elemento del quale è disgiunto. Quindi nessun insieme contiene ([[Ricorsione e induzione||ricorsivamente]]) se stesso e ha quindi senso di misurare la [[Coppie#^0c58aa||cardinalità]] di un insieme

#### Assioma del rimpiazzamento
L'immagine di un insieme rispetto ad una formula che descrive una funzione è ancora un insieme.
$$\{x+1 \ | \ x\in PARI\}$$
