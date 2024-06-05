<font color="red">initscr()</font> : inizializza lo schermo imposta la memoria e pulisce lo schermo.

<font color="red">endwin()</font> : de-alloca la memoria e termina ncurses

tutte le operazioni vanno eseguite tra in mezzo alle funzioni: "<font color="red">initscr()</font>" e "<font color="red">endwin()</font>" 

<font color="red">refresh()</font> : refresha lo schermo per far si che coincida con quello che c'è in memoria. ^d0fc2a

per compilare il file si usa la seguente stringa:
<font color="yellow">g++ -lncurses (nome_file.cpp) -o (nome eseguibile)</font>

#### Catturare l'input 

<font color="red">getch()</font>: aspetta l'input dell'utente e ritorna il valore intero del tasto premuto. ^e8df66

<font color="red">printw()</font> :funziona come il "printf()" di C (quindi necessita degli specificatori di formato come: %d, %f...) ma stampa il contenuto della parentesi in una finestra.  ^6975c2

