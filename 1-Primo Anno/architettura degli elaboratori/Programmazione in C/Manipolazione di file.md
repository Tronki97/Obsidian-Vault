- ### Leggere/Scrivere un file:
	- bisogna creare un puntatore a file, necessaria la libreria `stdio.h` ed usare la variabile FILE
```c
#include <stdio.h>
FILE *miofile;
miofile = fopen("input.txt", "r"); // Apro in modalità lettura (read)

FILE *altrofile;
altrofile = fopen("output.txt", "w"); // Apro in modalità scrittura (write)

// Se output.txt non esiste, il parametro w ne crea uno e lo apre in scrittura!!!
```
- Per leggere e scrivere effettivamente sul file bisogna usare i comandi `fprint()` e `fscanf()`
```c
int a, b;
fscanf(miofile, "%d%d", &a, &b); // Leggo 2 interi nel file e li salvo in a e b
fprintf(altrofile, "Somma: %d\n", somma(a,b));
// Faccio la somma degli interi letti e scrivo il risultato nella stringa che metto
// in output.txt
```
- La funzione `feof()` restituisce true se si è tentato di leggere oltre la fine del file  
- ## Nota bene:
	- quando un file non viene più usato deve essere chiuso con la funzione `fclose("nome_del_file")`
- la funzione `fgets()` permette di leggere un'intera riga da un file
```c
FILE *prova;
char str[60];
prova = fopen("file.txt", "r");
fgets(str, 60, fp); //Legge 59 (+ '\0') caratteri da una riga e li salva in str

// Restituisce NULL se il file è terminato
```