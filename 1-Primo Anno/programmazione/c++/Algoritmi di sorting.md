vari tipi di algoritmo:
- selection-sort: trova il più piccolo valore dell'[[Array]] e la sua posizione "i"
- bubble sort: si prende un valore e se è piu grande di quello nella posizione successiva lo sposta più avanti facendolo "galleggiare" fino a che non incontra un numero più grande.
- quicksort:
- mergesort:
- insertion sort:



ricerca di un elemento k in un [[Array]] ordinato:
si guarda l'elemento a metà dell'array e se non è uguale a k si guarda la metà con le caratteristiche adeguate e si ripete finche non si trova k o finché non si arriva alla lunghezza dell'array con il numero di iterazioni.


### SortInsert 
```c++
struct vacanza
{
    int ngiorni;
    float prezzo;
    char tipo[20];
    vacanza *next;
};

typedef vacanza *pvac;

pvac sortInsert(pvac h, pvac node)
{
    if(h == NULL){ //inserimento in testa
        h = new vacanza;
        h->next = NULL;
        h->ngiorni = node->ngiorni;
        h->prezzo = node->prezzo;
        strcpy(h->tipo, node->tipo);   
        return h;
    } 
    else
    { // nodo qualsiasi
        pvac nnode = h->next;
        pvac prec = h;
        bool check = false;
        while (nnode != NULL && (!check))
        {
        double prezzo1=node->prezzo/node->ngiorni;
        double prezzo2=nnode->prezzo/nnode->ngiorni;
            if ( prezzo1 < prezzo2)
            {
                prec->next = NULL;
                prec->next = new vacanza;
                prec = prec->next;
                prec->ngiorni = node->ngiorni;
                prec->prezzo = node->prezzo;
                strcpy(prec->tipo ,nodo->tipo);
                prec->next = nnode;
                check = true;
            }
            
            prec = nnode;
            nnode = nnode->next;
        }

        if(!check)
        { // inserimento in coda
                prec->next = NULL;
                prec->next = new vacanza;
                prec = prec->next;
                prec->ngirni = node->ngirni;
                prec->prezzo = node->prezzo;
                strcpy(prec->tipo, node->tipo);
                prec->next = nnode;
                check = true;
        }
        return h;
    }
}

```
Se la lista è vuota inserisce il nodo in testa, altrimenti se la lista contiene già dei valori la si scorre,  se si incontra la condizione necessaria si inserisce il nuovo nodo in mezzo alla lista usando due liste temporanee (una che controlla il nodo successivo e uno che controlla il nodo attuale) infine se nessun nodo soddisfa la condizione vuol dire che il nuovo valore va inserito in fondo.