<font color="red">NB!!!</font><font color="yellow">:Quando non si ha creato nessuna nuova WINDOW si può usare "stdscreen" che rappresenta lo schermo della console che si stava usando all'inizio.</font>
		<font color="red">WINDOW *</font> : WINDOW e un tipo di variabile e di solito la si usa per i [[Puntatori e strutture dati Dinamiche||puntatori]].  
<font color="red">newwin(height, width, start_y, start_x)</font> : crea una finestra(zona di memoria) con i determinati parametri.
<font color="red">wprintw(window, "*")</font> : stampa nella finestra specificata ciò che viene messo in argomento 
<font color="red">wrefresh(window)</font> : fa il [[1-Primo Anno/programmazione/c++/Ncurses/Intro#^d0fc2a||refresh]] della finestra specificata. 
<font color="red">box(window, y, x)</font> : crea nella finestra specificata una "box" che rappresenta i bordi della suddetta finestra, x e y sono dei valori che rappresentano che tipo di caratteri comporranno i bordi laterali e superiori della box.
<font color="red">mvwprintw(window, y, x, "*")</font> : effettua [[Cursore#^438b55||mvprintw()]] nella finestra specificata. 

Es: 
```c++
initscr();

WINDOW* win= newwin(10, 20, 5, 10);
refresh();
wprintw(win, "hello");
wrefresh(win);

endwin();
```

Creerà una nuova finestra di quelle dimensioni e con quei punti di partenza, refresha, stampa in quella specifica finestra alla riga 5 e colonna 10 la scritta "hello" e poi refresha quella finestra per farla visualizzare sullo schermo.