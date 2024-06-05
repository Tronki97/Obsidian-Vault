la portata di un identificatore è la parte di programma in cui essa è valida;  è il blocco in cui occorre la dichiarazione 
![[Pasted image 20231009154824.png]]

stamperà "1, 2", perché la portata di una dichiarazione di un identificatore è dal  punto in cui occorre alla fine del blocco corrispondente; nello stesso blocco non si può definire due volte lo stesso identificatore

![[Pasted image 20231009155240.png]]
Il programma stampa "errore" perché: non è definita la variabile y nel blocco in cui c'è la stampa.

# sviluppo top-down 

una funzione è un blocco(dichiarazioni + comandi) a cui è associato un nome

Funzioni
- senza argomenti di input e senza ritorno di valori
- con parametri di input e senza output
- con input e output

non è possibile definire le funzioni all'interno del main perché sono tutte al suo stesso livello.

![[Pasted image 20231010122822.png]]

La stampa di questo codice sarà 7 10 perché: la funzione min fa il suo compito e rende n=10 ma nel main m viene definito = 7 cosi facendo il "cout" prende il valore al livello più vicino ovvero quello dentro al main piuttosto che quello nella funzione min;

![[Pasted image 20231010123719.png]]

la stampa sarà 7 perché il numero 6 rappresenta il valore di x che poi verrà sommato a 1; nel caso si potrebbe fare un cin di x all'interno del main nel quale si inserisce il valore di x; questo procedimento si chiama: passaggio per valori.

Passaggio per riferimento: Non passo un valore ma invece un indirizzo di memoria, vengono dichiarati con "&" dopo il tipo(int&: indirizzo di cella che contiene un intero)

Passaggio per costante: vengono dichiarati con 'const' prima del tipo(const int...) 
i parametri passati per costante non possono essere modificati.

se vogliamo utilizzare delle variabili globali è meglio utilizzare il passaggio per riferimento 

Librerie in Clion: creare i file library.h e library.cpp ad esempio nella stessa cartella del main cliccando tasto dx sul nome della cartella e selezionando 'new'

nel file cmakeList.txt aggiungere library.cpp alla lista degli executable 

a volte usare le funzioni da una libreria può creare problemi se la stessa funzione è definita in due librerie diverse, per ovviare al problema si possono usare i namespace 





