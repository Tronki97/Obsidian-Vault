## Definizione:
Sia $f: A \to \mathbb{R}$, con $A \subseteq \mathbb{R}$, una funzione. Una funzione $F: A \to \mathbb{R}$ si dice **primitiva** di $f$ su $A$ se e solo se per ogni $x \in A$, vale che:
$$ F'(x) = f(x). $$

### Esempio:
Consideriamo la funzione $f: \mathbb{R} \to \mathbb{R}$ definita da $f(x) = \cos{x}$. La sua primitiva è $F(x) = \sin{x}$, poiché $\frac{d}{dx}\sin{x} = \cos{x}$ per ogni $x \in \mathbb{R}$. Notiamo che anche la funzione $G(x) = \sin{x} + k$, dove $k$ è una costante reale qualsiasi, è primitiva di $f$. Infatti:
$$ G'(x) = (\sin{x} + k)' = \cos{x}. $$

### Unicità delle primitive su un intervallo aperto:
Siano $F: ]a, b[ \to \mathbb{R}$ e $G: ]a, b[ \to \mathbb{R}$ due primitive di una funzione continua $f$ su un intervallo aperto $]a, b[$. Allora esiste una costante reale $k$ tale che:
$$ G(x) = F(x) + k \quad \forall x \in ]a, b[. $$

### Dimostrazione:
Consideriamo la funzione $H: ]a, b[ \to \mathbb{R}$ definita come:
$$ H(x) = G(x) - F(x). $$
Poiché entrambe le primitive derivano a $f$, allora per ogni $x \in ]a, b[$ si ha:
$$ H'(x) = G'(x) - F'(x) = f(x) - f(x) = 0. $$

Quindi, $H$ è una funzione costante su $]a, b[$. Sappiamo che una funzione con derivata nulla è costante. Dunque:
$$ H(x) = k \quad \forall x \in ]a, b[, $$
per qualche costante reale $k$. Questo significa che:
$$ G(x) - F(x) = k \quad \forall x \in ]a, b[. $$

### Caso in cui il teorema non vale:
Il teorema sopra descritto non è valido se l'intervallo considerato non è aperto. Ad esempio, consideriamo la funzione $f: \mathbb{R} \setminus \{0\} \to \mathbb{R}$ definita da:
$$ f(x) = \frac{1}{x^2}. $$

La funzione $F(x) = -\frac{1}{x}$ è una primitiva di $f$ su $\mathbb{R} \setminus \{0\}$. Consideriamo ora la funzione:
$$ G(x) = \begin{cases}
-\frac{1}{x}, & x > 0, \\
-\frac{1}{x} + 3, & x < 0.
\end{cases} $$

Allora $G'(x) = f(x)$ per ogni $x \in \mathbb{R} \setminus \{0\}$, ma $G$ e $F$ non differiscono per una costante su tutto $\mathbb{R} \setminus \{0\}$.

## Funzioni integrali

### Definizione:
Sia $f: A \to \mathbb{R}$ continua, con $A = ]a, b[$. Introduciamo la funzione integrale $I_c$ definita come:
$$ I_c(x) = \int_{c}^{x} f(t) \, dt. $$

### Proprietà della funzione integrale:
1. **Ben definizione**: Poiché $f$ è continua su un intervallo aperto, l'integrale definito esiste per ogni $x \in ]a, b[$.
2. **Significato grafico**:
   - Se $f(x) \geq 0$ per ogni $x$, allora $I_c(x)$ rappresenta la somma delle aree sotto la curva di $f(t)$ tra $c$ e $x$. In particolare, $I_c(c) = 0$.
   - Se consideriamo due punti $c$ e $c'$ in $A$, allora:
     $$ I_c(x) - I_{c'}(x) = \int_{c}^{x} f(t) \, dt - \int_{c'}^{x} f(t) \, dt = \int_{c}^{c'} f(t) \, dt. $$
     Questo significa che la differenza tra le funzioni integrali dipende solo dall'intervallo di integrazione.

### Teorema fondamentale del calcolo (integrali)
Sia $f: A \to \mathbb{R}$ una funzione continua su un intervallo aperto $A$, e sia $c \in A$. La funzione integrale $I_c$ è derivabile in ogni punto di $A$ e soddisfa:
$$ I'_c(x) = f(x) \quad \forall x \in A. $$

### Esempio:
Consideriamo la funzione:
$$ F(x) = \int_{0}^{x} \sin(t + t^2 + 3) \, dt. $$
Non è facile calcolare esplicitamente $F(x)$, ma sappiamo che:
$$ F'(x) = \frac{d}{dx} \int_{0}^{x} \sin(t + t^2 + 3) \, dt = \sin(x + x^2 + 3). $$

### Esempi di calcolo delle derivate
1. **Calcolare $\frac{d}{dx} \int_{0}^{\sin{x}} t^2 e^{-t} \, dt$**:
   - Utilizzando la regola della catena:
     $$ \frac{d}{dx} \int_{0}^{\sin{x}} t^2 e^{-t} \, dt = (\sin{x})' \cdot \left( \frac{d}{du} \int_{0}^{u} t^2 e^{-t} \, dt \right) = \cos{x} \cdot (u^2 e^{-u})\bigg|_{u=\sin{x}} = \sin^2{x} e^{-\sin{x}} \cdot \cos{x}. $$

2. **Calcolare $\frac{d}{dx} \int_{x}^{2x} \ln(1 + t^2) \, dt$**:
   - Sfruttando la proprietà della funzione integrale:
     $$ \frac{d}{dx} \left( \int_{x}^{0} \ln(1 + t^2) \, dt + \int_{0}^{2x} \ln(1 + t^2) \, dt \right) = -\ln(1 + x^2) + 2\ln(1 + (2x)^2). $$

3. **Calcolare $\lim_{x \to 0} \frac{1}{x^2} \int_{0}^{x} \sin(t^2 - t) \, dt$**:
   - Utilizzando il teorema di de l'Hôpital:
     $$ \lim_{x \to 0} \frac{\frac{d}{dx} \int_{0}^{x} \sin(t^2 - t) \, dt}{\frac{d}{dx} x^2} = \lim_{x \to 0} \frac{\cos(x^2 - x)}{2x} = -\frac{1}{2}. $$

### Estensione del teorema fondamentale del calcolo
Consideriamo la funzione:
$$ h(x) = \int_{0}^{x^2} \sqrt{1 + t} e^{-t} \, dt. $$
Calcolando la sua derivata:
$$ h'(x) = 2x \cdot \sqrt{1 + x^2} e^{-x^2}. $$

### Formula di Torricelli
La formula di Torricelli è una applicazione del teorema fondamentale del calcolo per il calcolo degli integrali definiti.
