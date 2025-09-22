``` bash
make
```
- questo comando andrà a creare automaticamente un makefile nella directory corrente che assomiglia a:
```c
main: main.o somma.o 
 gcc -o main main.o somma.o

main.o: main.c somma.h 
 gcc -c main.c somma.o: 

somma.c somma.h 
 gcc -c somma.c 

clean: rm *.o main
```
- funziona così:
	- prima dei ":" c'è il nome del file che verrà creato.
	- dopo i ":" c'è il nome dei file da cui questo dipende direttamente
	- sotto ci metto il comando per la compilazione dei file
	- il "clean" serve per pulire la directory dai vecchi file oggetto o eseguibili
- Quindi riassumendo:
	- make guarda i file prima dei ":" e se i file dopo sono più recenti ricompila quelli prima; questo confronto viene eseguito ricorsivamente per ogni file dopo i ":"