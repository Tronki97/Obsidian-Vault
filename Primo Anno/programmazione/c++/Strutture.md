Raggruppamenti di dati diversi tra loro (sotto un unico nome)

si possono ricondurre al prodotto cartesiano
$A x B$ questi insiemi possono avere dati di diverso tipo 

quando definiamo una struttura dobbiamo definire il tipo di ogni dato al suo interno

non possiamo fare una roba del tipo S[primo]=S[secondo] perché si potrebbe verificare un errore di tipo 

occorre specificare il nome di ciascuna componente      (i campi) e il tipo di informazione memorizzato nei campi

l'accesso ad un particolare elemento faccio una "proiezione" su quell'elemento

## Come accedere ai vari campi:

nome_struttura.campo=...

un esempio può essere 
A.campo1.campo2  : accedo al campo2 contenuto nella struttura campo1 che è contenuta a sua volta nella struttura A


è possibile copiare e assegnare strutture 

struct1=struct2;

tutti i campi di struct2 sono copiati in struct1 anche quando i campi sono array; non si possono confrontare le strutture 

