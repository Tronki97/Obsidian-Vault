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

<!-- #region id="dZg6yo6PVgwy" -->
una semplice animazione per mostrare la regressione logistica in azione
<!-- #endregion -->

```python id="uk-XPeC7VdeF"
# Logistic regression example
import numpy as np
import math
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import time

```

```python id="Mb8ag9NfVjPH"
from matplotlib import rc

# Equivalent to rcParams['animation.html'] = 'html5'
rc('animation', html='html5')

```

```python id="nnuNyFFkVkom"
def sigmoid(x):
    return 1 / (1 + math.exp(-x))

```

<!-- #region id="yui-vr-TVlg9" -->
il dataset è composto da 100 punti casuali in un quadrato $[0,1]x[0,1]$.
si dividono i punti in 2 classi tramite una linea dritta che passa in mezzo (0.5, 0.5) con una inclinazione di $m$, così che le 2 classi abbiano circa la cardinalità uguale.
serve aggiungere del rumore gaussiano per rendere la classificazione meno precisa.
il livello di rumore può essere controllato con il parametro `dev`, il quale è la deviazione standard del rumore gaussiano
<!-- #endregion -->

```python id="j96EiIfFVm5h"
def generate_data_set(m, dev=0.05):
    x1 = np.random.rand(100)
    x2 = np.random.rand(100)
    y = (x2 - m * x1 - (1 - m) / 2) < 0
    # Add Gaussian noise
    x1 += np.random.normal(size=100, scale=dev)
    x2 += np.random.normal(size=100, scale=dev)
    return x1, x2, y

```

```python id="ml4c34jZVoTu"
x1, x2, y = generate_data_set(7.0)

```

```python colab={"base_uri": "https://localhost:8080/", "height": 430} id="NfwxQ3xFVp42" outputId="d3084ea3-ca28-429c-8605-c1c169c96c5e"
fig = plt.figure()
plt.scatter(x1, x2, c=y)
line, = plt.plot([], [], lw=2)

```

```python id="5A-QLDRgVrVx"
# Gradient for logistic regression
def grad(x1, x2, label, prediction):
    diff = label - prediction
    dw0 = np.mean(diff)
    dw1 = np.mean(x1 * diff)
    dw2 = np.mean(x2 * diff)
    return dw0, dw1, dw2

```

```python id="CzMuEpJMVtPB"
lr = 0.1
epochs = 2000

# Initialize parameters randomly
a = np.random.normal()
b = np.random.normal()
c = np.random.normal()
params = [a, b, c]

```

```python id="3Igd_s3mVu4w"
def init():
    # Current approximation
    line.set_data([0, 1], [a, a + b + c])
    return line,

def step(i):
    a, b, c = params
    pred = np.vectorize(sigmoid)(a + b * x1 + c * x2)
    da, db, dc = grad(x1, x2, y, pred)

    if i % 100 == 0:
        print(f"Iteration {i}: log-likelihood = {np.sum(pred * (y == 1) + (1 - pred) * (y == 0))}")
        print(a, b, c)

    params[0] = a + lr * da
    params[1] = b + lr * db
    params[2] = c + lr * dc

    # For animation
    line.set_data([0, 1], [-a / c, -(a + b) / c])
    return line,

anim = animation.FuncAnimation(fig, step, init_func=init, frames=epochs, interval=1, blit=True, repeat=False)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 1000} id="sqls3svuVyGE" outputId="0472b38b-7df6-4cb6-e2c0-4fa8c017c768"
anim
```
