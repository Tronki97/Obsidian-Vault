Se un giorno dimentichiamo un segreto? (es chiave, password) 

Escrow: agreement contrattuali tra due parti fatta con una terza, in cui due parti coinvolge uno scambio finanziario 
- Parte terza (autorizzata) prende le chiavi private, e può accedervi o rivelarle in certe circostanze

Soluzione banale: coinvolgere una terza parte Chief Security Office 
- si rilasciano i segreti a questa figura, che può rilasciarla 
- CSO deve essere fidato 
- e se c'è un disastro? 


## condivisione del segreto 
Dividi il segreto in n pezzi e manda ogni pezzo ad un Security Offiser 
- oppure cripta l'i-esimo pezzo con la chiave pubblica del security office i e tieni tutto sul tuo disco 
Nessun sottoinsieme di security officers dovrebbe essere in grado di ricostruire il segreto 
- tutti insieme sì 

Come dividiamo sto segreto in n pezzi? 
**soluzione naive**
- dividere un messaggio di k bits in n segmetni k/n bit ciascuno (tranne l'ultimo)
**problemi** 
- ogni sottoinsieme di security officers può fare brute forse 

### 2-way secret sharing
Dividi S tra due security officers 
_Confidenzialità_: nessun security officer da solo può risalire a S 
_Disponibilità_: insieme i due possono ricostruire S 

S una stringa di k bit e n= 2
Genera una stringa R random di lunghezza k 
Dai al primo  officer la stringa $S_1$=R 
e al secondo $S_2 = R \oplus S$  (xor) 
- ricostruisce il segreto con $S1 \oplus S_2$ 
![[Pasted image 20250515152603.png|400]]
Questo schema soddisfa confidenzialità e disponibilità 
![[Pasted image 20250515152740.png|350]] 

Questo schema può essere esteso a ***n-way sharing*** 
- con: nessun sottoinsieme di m officers può risalire a S 
- ava: tutti i n officers riescono 

Si generano _n-1_ stringhe casuali di k bits 
- all'n-esimo officer diamo il risultato dello xor tra tutte le stringhe casuali e tra S 
- ad ogni n-1 officer do una stringa casuale 


Problema: abbiamo reso la disponibilità del segreto molto bassa 
- se manca un secOff? che si fa? 
- _disponibilità_ abbassata in maniera drammatica 
- Dobbiamo rilassare il fatto che ci vogliono tutt i n bro per risolvere s 

### (t,n) threshold scheme 
versione rilassata 
S diviso in n pezzi 
- ci bastano solo t o più pezzi (t<n) per risolvere S 
- meno t non si riesce 

#### _metodo shamir_ 
Genera un polinomio di grado t-1 
$$g(x) = (a_{t-1}x^{t-1}+...+a_1x +S) mod p$$ 
- p è un numero primo che deve essere maggiore di tutti i coefficienti scelti 
- i coefficienti sono selezionati a caso 
Generiamo gli n da condividere valutando il polinomio su interi da 1 a n 
$$S_1 = g(1), S_2=g(2)..., S_n=g(n)$$
A questo punto ci possiamo scordare il polinomio 

_esempio_
(2,n)
una retta intercetta x = 0 in S e ha pendenza definita da a 
g(x)  =(ax +S) mod p 
Dati due pezzi del segreto originale, S3 e S7 
- è possibile trovare solo un S che sta in x = 0
![[Pasted image 20250515153853.png|200]]
Se do solo un punto S7
- ci sono infinite rette che passano per quel punto quindi sticazzi non riesci a trovare S 
![[Pasted image 20250515153906.png|300]]

Tutte le slide dopo sono state saltate 