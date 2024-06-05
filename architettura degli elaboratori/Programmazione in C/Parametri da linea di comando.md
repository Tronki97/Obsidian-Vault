- se la funzione main prevede dei parametri da utilizzare è possibile inserirli da riga di comando
```bash 
main(int argc, char **argv)
```
- dove:
	- argc: contiene il numero di argomenti che passerò al main
	- argv: è un array di [[Stringhe]], una stringa per ogni argomento compreso il nome del file( che occupa la posizione argv$[0]$)