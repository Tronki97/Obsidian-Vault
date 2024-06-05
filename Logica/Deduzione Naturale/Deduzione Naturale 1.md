
$\top$ rappresenta ciò che vale sempre 
$\bot$ rappresenta ciò che non vale mai


AND OR e implica sono connettivi binari 

i connettivi binari sono associativi a destra A-->B-->C significa A-->(B-->C) mettendo le parentesi a partire da destra 
not ha la precedenza sull'and che ha la precedenza sull'OR 


alberi di deduzione naturale:
una struttura dati è un insieme di dati, strutturati con un certo ordine in modo tale da agevolarne la lettura.
l'albero ha dei nodi che possono trasportare dei dati i quali poi possono ramificarsi in altri rami con a loro volta altri nodi. 
Gli alberi di deduzione naturale sono fatti al contrario di quelli di informatica con le radici in basso e si ramificano verso l'alto
![[Pasted image 20231012113335.png]]

le foglie sono ipotesi locali mentre quelle tra parentesi[] sono ipotesi globali.

Ricorsiva: si riferisce a se stessa, 
top: radice 
bottom: foglie

a sinistra del deriva ($\vdash$) ci sono le ipotesi, a destra ci sono le conclusioni derivate dalle ipotesi

se tutte le foglie sono scaricate (ipotesi che non devo dimostrare ma che valgono solamente in un certo albero): il risultato appartiene all'insieme vuoto d'ipotesi il che è quasi mai vero.

se non c'è una regola che ci da un ipotesi non si può supporre nulla.


ogni regola ammette due letture: da sopra a sotto(per concludere F mi riduco a dimostrare F1,.....,Fn) o opposto(dalle premesse F1,.....,Fn arrivo a dimostrare F);

#### invertibilità

^c808f0

per verificare di essersi ridotti a verificare le regole in modo giusto si usa l'invertibilità di una regola; significa in top-down che se una regola ha questa caratteristica non si rischia di finire in un vicolo cieco e può essere sempre usata. ^invertibile

sono invertibili quelle regole con la lettura bottom-up che risulta naturale

introduzione $\wedge$ 
![[Pasted image 20231018184634.png]] 
per dimostrare e F1 ∧ F2 devo dimostrare sia F1 che F2.

eliminazione $\wedge$
![[Pasted image 20231018184806.png]]
la regola è [[#^c808f0||invertibile]] se si assume F1 ∧ F2.


intro V
![[Pasted image 20231024130138.png]]
Per dimostrare $F_1\vee F_2$ è sufficiente dimostrare $F_1$  o $F_2$ 


eliminazione V
![[Pasted image 20231024152932.png]]

se vale $F_1\vee F_2$ e $F_3$ vale sia con $F_1$ che con $F_2$ allora $F_3$ vale 

introduzione $\Rightarrow$ 

![[Pasted image 20231024125355.png]]

per dimostrare $F_1 \Rightarrow F_2$ basta assumere $F_1$ e dimostrare $F_2$. la regola è [[#^c808f0||invertibile]]

eliminazione $\Rightarrow$ 

![[Pasted image 20231024125628.png]]

per dimostrare $F_2$ devo trovare un $F_1$ che valga e tale per cui $F_1 \Rightarrow F_2$ 

intro $\top$:  il vero(è un assioma)

eliminazione $\top$:
![[Pasted image 20231024153740.png]]

(INUTILE) perché non ci guadagno nulla e finisce in un detour

intro  $\bot$: NESSUNA

eliminazione $\bot$:
![[Pasted image 20231024154201.png]]
per dimostrare qualunque cosa posso ridurmi a dimostrare l'assurdo.


$¬F \equiv (F\Rightarrow \bot)$ 
la negazione di F è vera quindi F implica il falso (le due cose si equivalgono)

$\neg$ intro:
![[Pasted image 20231031162806.png]]
se ipotizzo $F_1$ dimostro l'assurdo allora $¬F_1$
continuando e appunto dimostrando l'assurdo è possibile proseguire e le ipotesi utilizzate permettono di dimostrare qualsiasi cosa e tutte le regole diventano invertibili


$\neg$ eliminazione:
![[Pasted image 20231031163119.png]]
per dimostrare l'assurdo basta dimostrare qualcosa e il suo contrario




DOMANDE DA PORSI:

1) ma le regole che ci sono state date sono corrette?
devo prima ragionare sulla mia logica che sto usando

2) le regole che ci sono state date sono sufficienti? Le abbiamo ricevute tutte?
se non avessi ricevuto la regola di intro dell'AND non potrei dimostrare $\top \wedge \top$  


Regola RAA 
![[Pasted image 20231109142958 2.png]]
per dimostrare F assumiamo $\neg F$ e dimostrando $\bot$ 