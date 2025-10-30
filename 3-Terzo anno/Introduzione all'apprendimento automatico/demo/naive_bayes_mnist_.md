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

<!-- #region id="oAZSHJ0NQU3X" -->
Comparo [[Naive Bayes#^3fb98d|naive bayes gaussiano]] e la sua versione discrera nel caso _mnist_
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/", "height": 0} id="qf7G8f98QS2U" outputId="c3a2e26f-bfa8-4795-bd82-704040849efc"
import numpy as np
import matplotlib.pyplot as plt
import time

# Load dataset
from tensorflow.keras.datasets import mnist
(x_train, y_train), (x_test, y_test) = mnist.load_data()

x_train = x_train / 255.
x_test = x_test / 255.

print("min value = {}, max value = {}".format(np.min(x_train), np.max(x_train)))
print(x_train.shape)
print(x_test.shape)

```

```python colab={"base_uri": "https://localhost:8080/", "height": 168} id="dPInjIQHQcGx" outputId="e564a6f2-6775-4bd4-ea71-2a957fe06971"
def show_samples(samples):
    n = np.shape(samples)[0]
    plt.figure(figsize=(2 * n, 4))
    for i in range(n):
        ax = plt.subplot(1, n, i + 1)
        plt.imshow(samples[i])
        plt.gray()
        ax.get_xaxis().set_visible(False)
        ax.get_yaxis().set_visible(False)
    plt.show()

show_samples(x_test[20:30])

```

```python colab={"base_uri": "https://localhost:8080/", "height": 168} id="5yqccvWkQeRI" outputId="ee2bc994-c2a5-4be5-ec16-b4b9bbe23de9"
mean_digits = np.zeros((10, 28, 28))
for i in range(0, 10):
    mean_digits[i] = np.mean(x_train[y_train == i], axis=0)
show_samples(mean_digits)

```

```python colab={"base_uri": "https://localhost:8080/", "height": 0} id="9WrLerxBQfxK" outputId="6df994ac-bf34-4dbf-8ea1-f3c09d854cef"
# Compute the cardinality of all categories
card = np.zeros((10,))
for i in range(0, 10):
    card[i] = np.sum(y_train == i)

print("card = ", card)

```

<!-- #region id="CUPgaPu6QZiJ" -->
We can also plot these frequencies as a histogram.

<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/", "height": 487} id="G2EsueVSQjcd" outputId="83c95d92-b442-47fc-9c87-25a3bdc69f8b"
def plot_hist(a, bins=10, title=None):
    plt.figure(tight_layout=True)
    plt.hist(a, bins=bins)
    if title:
        plt.title(title)
    plt.show()

plot_hist(y_train, title="Data for categories")

```

<!-- #region id="W-CqB-0tQma8" -->
Ora si calcolano i parametri per naive bayes gaussiano 
Si ignorano le priori $P(Y)$ visto che il dataset è sufficientemente bilanciato
Per ogni categoria e pixel, si calcola la [[Media]] e la [[Varianza]]
<!-- #endregion -->

```python id="GALlgyH0Qo_T"
Mean = np.zeros((10, 28, 28))
Var = np.zeros((10, 28, 28))
epsilon = 1e-5  # Small positive value

for i in range(0, 10):
    Mean[i] = np.mean(x_train[y_train == i], axis=0)
    Var[i] = np.var(x_train[y_train == i], axis=0)
    Var[i] = np.maximum(Var[i], epsilon)

```

<!-- #region id="TTyyi2TYQpiP" -->
Ora si calcola, per ogni categoria, una distribuzione gaussiana multimodale per i pixel
<!-- #endregion -->

```python id="iSVL2FhmQrO7"
def gaussian_density(x, mean, var):
    numerator = np.exp(- (x - mean) ** 2 / (2 * var))
    denominator = np.sqrt(2 * np.pi * var)
    return numerator / denominator

```

```python id="2jFMtwf3QtYF"
def classify(sample):
    probs = []
    for i in range(0, 10):
        pixel_probs = gaussian_density(sample, Mean[i], Var[i])
        prob = np.sum(np.log(pixel_probs))
        probs.append(prob)
    return np.argmax(probs)

```

```python colab={"base_uri": "https://localhost:8080/", "height": 317} id="_lZ-8UfhQvLk" outputId="b87c237e-6768-4798-9612-8b827e6aaf31"
for i in range(100):
    prediction = classify(x_test[i])
    true = y_test[i]
    print("true = {}, predicted = {}".format(true, prediction))
    if true != prediction:
        show_samples(np.expand_dims(x_test[i], axis=0))
        break
    time.sleep(2)

```

<!-- #region id="1rbA1fH6QzLG" -->
# Discrete case

<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/", "height": 168} id="06fnk3InQwpy" outputId="3664215a-0dfa-4c06-e9dc-91ec41b7879a"
x_train_discr = x_train > 0.5
x_test_discr = x_test > 0.5

show_samples(x_test_discr[20:30])

```

```python id="P5d2HLmYQ2w4"
Freq = np.zeros((10, 28, 28))
for i in range(0, 10):
    Freq[i] = np.sum(x_train_discr[y_train == i], axis=0)

# Add one to avoid zero (for log computations)
Freq += 1

```

```python colab={"base_uri": "https://localhost:8080/", "height": 430} id="B6SvDFetQ4GZ" outputId="32d649b1-ab52-4ede-d1ed-06879e4f3697"
def freq_ij_by_category(i, j):
    freq_ij = Freq[:, i, j]
    plt.bar(np.arange(freq_ij.shape[0]), freq_ij)

freq_ij_by_category(4, 10)

```

```python colab={"base_uri": "https://localhost:8080/", "height": 0} id="FuqTEHf_Q9td" outputId="54f60308-8135-41b5-c2df-d551b82a7d30"
# Probabilities to be 1 or 0
Prob1 = Freq / card[:, None, None]
Prob0 = 1 - Prob1

print("Prob1, Prob0 shape =", Prob1.shape, Prob0.shape)

# Passing to logs
logProb1 = np.log(Prob1)
logProb0 = np.log(Prob0)

assert (logProb1 <= 0).all() & (logProb0 <= 0).all()

```

```python id="2wT6sPnJQ_Ld"
def classify(img):
    d_img = img > 0.5
    logp = np.sum(logProb1 * d_img + logProb0 * (1 - d_img), axis=(1, 2))
    return np.argmax(logp)

```

```python colab={"base_uri": "https://localhost:8080/", "height": 353} id="6YsyBoPSRAR8" outputId="59c789c1-7e32-400d-c3eb-a881d1ff1f2f"
for i in range(100):
    prediction = classify(x_test[i])
    true = y_test[i]
    print("true = {}, predicted = {}".format(true, prediction))
    if true != prediction:
        show_samples(np.expand_dims(x_test_discr[i], axis=0))
        break
    time.sleep(2)

```
