<font color="red">cbreak()</font> : permette di usare ctrl+c per uscire dal programma. 
<font color="red">raw()</font> : fa si che tutti i caratteri speciali come ctrl+c vengano accettati.
<font color="red">noecho()</font> : fa si che quando abbiamo un [[1-Primo Anno/programmazione/c++/Ncurses/Intro#^e8df66||getch()]] e viene premuto un tasto esso non venga scritto scritto sul programma e quindi non lo vediamo.
tlc
<font color="red">wborder(window, left, right, top, bottom, tlc, trc, blc, brc)</font> : permette di personalizzare nello specifico i bordi inserendoci i valori "int".
tlc->(top left corner);
trc->(top right corner);
blc->(bottom left corner); 
brc->(bottom right corner);

