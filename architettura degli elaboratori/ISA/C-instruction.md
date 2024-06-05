- dest= comp ; jump
- "dest=" e "; jump" sono opzionali
- ![[Pasted image 20231025155043.png]]
	- M= numero di locazione della RAM
	- D ed A sono dei registri interni
	- A: usata solo per gli indirizzi della RAM
	- D: variabile.
	- ##### JUMP:
		- Salta alla posizione della ROM indicata dall'@(che andrà a riferirsi all'etichetta con lo stesso nome):
			- JGT: jump greater than (if out>0, jump)
			- JEQ: jump equal (if out == 0, jump)
			- JGE: jump greater or equal (if out >=0, jump)
			- JLT: jump lower than (if  out<0, jump)
			- JNE: jump not empty (if out !=0, jump)
			- JLE:  jump lower or equal(if out<=0, jump)
			- JMP: jump
- ## Codifica:
	- $111A\ \   C_{1​}C_{2}​C_{3}​C_{4}​ \ \  D_{1}​D_{2}​D_{3}​\ \ J_{1}​J_{2}​J_{3}$
		- 111 : è la codifica per identificare che si tratta di una [[C-instruction]]
		- $A\ \   C_{1​}C_{2}​C_{3}​C_{4}$ sono tutte le combinazioni di [[Istruzioni ISA#^5b1cef||opcode]] eseguibili dalla [[ALU]]
		- $D_{1}​D_{2}​D_{3}​$ indirizzo del registro di destinazione
		- $J_{1}​J_{2}​J_{3}$ è il tipo di jump da eseguire
	- (_tutti questi sono combinazioni di bit_)










