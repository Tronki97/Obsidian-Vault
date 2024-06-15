TOOLS:

SPECIFICHE:
- implementare una versione ASCII semplificata di tetris
	- con punteggio 
	- comandi da tastiera
- usare solo librerie di selezione e grafiche 
- dimensioni 20x10
- regole del tetris classico
- implementare almeno due figure:
	- blocco da 4 
	- linea 
- implementare un menù iniziale
	- nuova partita e classifica(da salvare in un file esterno)
- nel file README 
	- contenere le istruzioni su come eseguire il file e compilarlo


g++ main.cpp Classifica.cpp Drawable.cpp Tetramino.cpp Option.cpp TetrisBoard.cpp Game.cpp Menu.cpp Hud.cpp -lncurses -o main per compilare i file 
./main per eseguire.