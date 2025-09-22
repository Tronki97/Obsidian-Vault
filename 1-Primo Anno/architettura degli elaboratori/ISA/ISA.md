- per usare un processore lo si programma con uno specifico linguaggio con una serie di istruzioni che dipende dalla "instruction set architecture" (ISA).
- l'implementazione del processore verrà fatta in HDL ed esso dovrà essere in grado di eseguire le istruzioni dell'ISA che studieremo(in particolare quella del computer Hack). 
- Linguaggio assembly si trova esattamente prima dell'hardware, solitamente i linguaggi ad alto livello traducono le istruzioni in basso livello(assembly) per poi farle eseguire.





La ROM contiene il programma su di cui non viene mai scritto. 
la RAM contiene i dati. 
il PC (program counter) punta una determinata istruzione nella ROM e quella sarà la prossima ad essere eseguita.

se avessimo più registri ci permetterebbe di accedere meno volte alla RAM, con solo due registri con uno solo per i dati dobbiamo per forza accedere alla RAM





##### Esempio ez in assembly:
//RAM0=RAM1+RAM2

@1
D=M
@2
D=D+M
@0
M=D

@0
D=M

@ELSE
D;JLT

@END
0;JMP

(ELSE)
codice1

(END)



Livello ISA: rappresenta l'interfaccia tra hardware e software, istruzioni per il processore HACK:
- lunghezza a 16 bit  
- le due tipi di istruzioni;



#### Invocazione di una procedura:






![[Pasted image 20231108155956.png]]


