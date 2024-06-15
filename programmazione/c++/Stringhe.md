le funzioni usate appartengono alla libreria `<cstring>`

Quando si copia una scritta fatta come array di char bisogna usare string copy (strcpy) e non: string = "hi".

strlen(str) ritorna il numero di caratteri(compresi gli spazi).

le stringhe vengono passate come riferimento.

per restituire una stringa da una funzione bisogna che la funzione restituisca un [[Puntatori e strutture dati Dinamiche||puntatore]] a char,  e poi bisogna copiare il risultato della funzione in un altro puntatore a char 
```c++
char* restituisciStringa(){
	    // Dichiarazione di una stringa
	    char* stringa;
	    strcpy(stringa, "esempio");
    
	    // Restituzione della stringa
	    return stringa;
}

int main() {
    // Chiamata alla funzione per ottenere la stringa
    char* risultato; 
    strcpy(risultato, restituisciStringa());
    
    // Stampa della stringa restituita
    cout<<"Stringa restituita:"<<risultato;
}
```
