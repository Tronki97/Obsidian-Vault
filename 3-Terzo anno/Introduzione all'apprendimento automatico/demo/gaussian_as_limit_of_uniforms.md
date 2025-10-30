---
jupyter:
  jupytext:
    formats: ipynb,md
    main_language: python
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.18.1
  kernelspec:
    display_name: Python 3
    name: python3
---

<!-- #region id="_zSB3W_AJVW1" -->
una semplice dimostrazione per mostrare che la distribuzione gaussiana può essere intesa come una somma delle distribuzioni uniformi
<!-- #endregion -->

```python id="DgJKQ7NxJkbx"
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm
```

<!-- #region id="dtvueRoNJdTZ" -->
si calcolano 100000 numeri come una somma di 12 interi campionato secondo una distribuzione uniforme nel range [0,1].

la media della somma di distribuzioni è uguale alla somma delle medie, quindi la media che ci si aspetta è 12*0.5=6.

si shifta ogni numero di -6 per centrare la distribuzione nell'origine

la varianza della somma delle distribuzioni è uguale alla somma delle varianze

visto che la varianza di una distribuzione uniforme è $1 \over n$ ovvero $1\over 12$

la somma è 1
<!-- #endregion -->

```python id="TaFr5bRzJBGL"
no = 100000
all = []
for i in range(0,no):
  x = 0
  for j in range(0,12):
    x += np.random.rand()
  all.append(x-6)
```

<!-- #region id="9kpMliHdJU-H" -->
ora si disegna un istogramma della nostra distribuzione e la si compara con la gaussiana.
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/", "height": 430} id="KjCXwWLUKND6" jupyter={"is_executing": false} outputId="0bbdf08b-b321-46b1-a541-a47ae4f42208"
n, bins, patches = plt.hist(all, 100, density=True)
#now draw the gaussian
x = np.linspace(-4, 4, 100)
plt.plot(x,norm.pdf(x,0,1),linewidth=3)
plt.show()
```
