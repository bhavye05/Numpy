# NumPy Practice

## Importing the NumPy library

```python
import numpy as np
import warnings
warnings.filterwarnings("ignore")
```

---

## Creating a simple list

```python
nums = [15, 30, 45, 60, 75, 90, 105, 120]
nums
```

**Output**

```
[15, 30, 45, 60, 75, 90, 105, 120]
```

---

## Checking type of object

```python
type(nums)
```

**Output**

```
list
```

---

## Converting list → NumPy array

```python
arr_x = np.array(nums)
arr_x
```

**Output**

```
array([ 15,  30,  45,  60,  75,  90, 105, 120])
```

---

## Inspecting the array

```python
type(arr_x)      # Type of object
arr_x.dtype      # Datatype of elements
arr_x.shape      # Shape (rows, cols)
arr_x.size       # Number of elements
```

---

## Convert to float

```python
arr_x.astype(float)
```

---

## Array creation functions

```python
np.arange(0, 200, 25)          # numbers with step of 25
np.repeat(8, 6)                # repeat 8 six times
np.random.randint(50, 300, 5)  # 5 random integers between 50–300
```

---

# Operations on a 1D Array

```python
arr_y = np.arange(2, 26)  # numbers from 2–25
arr_y
```

**Output**

```
array([ 2,  3,  4,  5,  6,  7,  8,  9, 10, 11,
       12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
       22, 23, 24, 25])
```

---

### Examples

```python
arr_y.sum()                  # total sum
np.cumsum(arr_y)             # cumulative sum
arr_y.min(), arr_y.max()     # minimum & maximum
arr_y.mean()                 # mean
np.median(arr_y)             # median
np.var(arr_y)                # variance
np.std(arr_y)                # standard deviation
np.unique(arr_y)             # unique values
np.sort(arr_y)[::-1]         # sorting in descending order
arr_y + 5                    # element-wise addition
arr_y * 2                    # element-wise multiplication
np.square(arr_y)             # square of elements
```

---

# Operations on a 2D Array

```python
mat = np.array([
    [3, 7, 1, 9],
    [6, 5, 11, 8],
    [10, 14, 2, 4],
    [13, 15, 17, 12]
])
mat
```

---

## Basic operations

```python
mat.sum()
mat.max()
mat.min()
mat.shape            # shape of matrix
mat.size             # number of elements
mat.ndim             # number of dimensions
```

---

## Axis-based operations

```python
np.amin(mat, axis=0)   # column-wise minimum
np.amax(mat, axis=1)   # row-wise maximum
```

---

## Statistical operations

```python
mat.mean()
np.median(mat)
np.percentile(mat, 50)   # 50th percentile
np.var(mat)
np.std(mat)
```

---

## More Array Operations

```python
mat.reshape(2, 8)       # reshape into 2x8 matrix
mat.ravel()             # flatten into 1D array
mat.T                   # transpose
```

---

## Matrix Multiplication

```python
mat2 = np.array([
    [1, 0, 2, 1],
    [0, 1, 3, 2],
    [1, 2, 0, 1],
    [2, 1, 1, 0]
])

mat @ mat2              # matrix multiplication
np.dot(mat, mat2)       # dot product
```

---

## Percentile example

```python
sample = np.array([2, 5, 8, 11, 14, 18, 20])
np.percentile(sample, 70)
```

---

## Enumerating through 2D Array

```python
for index, value in np.ndenumerate(mat):
    print(f"Index {index}: {value}")
```
