collezioni di dati dello stesso tipo, gli elementi vengono memorizzati in elementi di memoria contigui(a differenza di un gruppo di n variabili che vanno ad occupare celle di memoria sparse), la dimensione deve essere una costante intera senza segno(>=0)

per accedere alla cella di memoria corrispondente nell'array si guarda l'indirizzo iniziale dell'array e si eseguono delle operazioni, tra un indice e lo spazio occupato da ogni cella di memoria, per arrivare alla cella che ci serve;

quando il compilatore si accorge di star facendo un accesso out-of-bound il compilatore si blocca e da errore. 

##### Passare un array come parametro 
alla funzione passo l'array e per passargli anche la lunghezza del suddetto devo passargliela come altro parametro, alla funzione viene passato solo l'indirizzo iniziale(gli array non si possono passare per valore) permettendo quindi di risparmiare la memoria utilizzata passata.

l'array può essere passato sia scrivendo il nome seguito da [] sia senza le quadre. 

se una funzione non modifica un array conviene passargliela come costante.




