memorizza un valore o il risultato di un calcolo: variabile = espressione.

CASO DI STUDIO: MEDIA TRA INTERI

![[Pasted image 20230926093429.png]]

la variabile media non ha specificatori e siccome sono interi il risultato sarà un valore intero, per rimediare si può rendere un'entità dell'operazione double.

COSTANTI
const double pi= 3.14; // occupa effettivamente uno slot in memoria 

`#define` pi 3.14 // non occupa memoria 

non è possibile cambiare il valore ad una costante(riceveremmo errore)

LIBRERIA
- <cmath> :
- double abs(double)
- double sqrt(double)
- double pow(double, double)
- double cos(double) 
- double sin(double)


<cstdlib>:
- int rand(); 
- int srand(int);
- RAND_MAX

sequenze di escape:
servono per aggiungere comandi ad un output






