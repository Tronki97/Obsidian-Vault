
- è l'unità aritmetico logica del processore
- Si occupa di prendere i valori dei registri _A_/_M_ e _D_ e di eseguire le operazioni indicate nei 6 bit di controllo, per poi salvare l'output nel registro indicato per la destinazione 
- Oltre all'output l'ALU hack genera due _flag_(bit di stato) che indicano se l'output è uguale o minore a 0 
- Si basa sul [[Codifica#^39c97b||complemento a 2]] e quindi non si implementa effettivamente la sottrazione perché basta fare:
	- $x-y = -(x-y)=-(!x+1+y)=!(!x+y)+1-1=!(!x+y)$ 


ADDER: creato per sommare 2 interi

Half adder: somma 2 bit

due ingressi: somma binaria con riporto classica, le uscite sono 2: Somma e riporto. la tabella di verità ricorda una XOR e il carry ricorda una AND.

full adder: somma 3 bit 


adder: somma 2 inter ad n bit 





