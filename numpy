# Numpy

## Importing numpy library

```python
import numpy as np
import warnings
warnings.filterwarnings("ignore")
from IPython.display import Image
```

## Creating array

```python
list1 = [10,20,30,40,50,60,70,80,90,100]
list1
```
#### Output
([ 10,  20,  30,  40,  50,  60,  70,  80,  90, 100])

## Displaying type of object

```python
type(list1)
```
#### Output
list

## Converting list to Numpy array

```python
#Convert list to Numpy Array
arr1 = np.array(list1)
arr1
```
#### Output
array([ 10,  20,  30,  40,  50,  60,  70,  80,  90, 100])

## Memory address of array object

```python
arr1.data
```
#### Output
<memory at 0x7c7934e91480>

## Type of object

```python
type(arr1)
```
#### Output
numpy.ndarray

## Datatype of array

```python
arr1.dtype
```
#### Output
dtype('int64')

## Converting integer array to float

```python
arr1.astype(float)
```
#### Output
array([ 10.,  20.,  30.,  40.,  50.,  60.,  70.,  80.,  90., 100.])

## Generate numbers till 150 with spaces of 10

```python
np.arange(0,150,10)
```
#### Output
array([  0,  10,  20,  30,  40,  50,  60,  70,  80,  90, 100, 110, 120, 130, 140])

## Repeat a number in the array

```python
np.repeat(20, 7)
```
#### Output
array([20, 20, 20, 20, 20, 20, 20])

## Array of random numbers

```python
np.random.randint(0,500,10)
```
#### Output
array([198, 358, 279, 474, 477])

# Operations on Array

```python
arr2 = np.arange(1,25)
arr2
```
#### Output
array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24])

## Sum of all elements

```python
arr2.sum()
```
#### Output
np.int64(300)

## Cumulative sum

```python
arr2.sum()
```
#### Output
array([  1,   3,   6,  10,  15,  21,  28,  36,  45,  55,  66,  78,  91,
       105, 120, 136, 153, 171, 190, 210, 231, 253, 276, 300])

 ## Finding min number
 
```python
arr2.min()
```
#### Output
np.int64(1)

## Finding max number

```python
arr2.max()
```
#### Output
np.int64(24)

## Finding mean of all numbers in an array

```python
arr.mean()
```
#### Output
np.float64(12.5)

## Finding median of all numbers in an array

```python
np.median(arr2)
```
#### Output
np.float64(12.5)

## Finding variance

```python
np.var(arr2)
```
#### Output
np.float64(47.916666666666664)

## Finding standard deviation

```python
np.std(arr2)
```
#### Output
np.float64(6.922186552431729)

Operations on a 2D Array
A = np.array([[1,2,3,0] , [5,6,7,22] , [10 , 11 , 1 ,13] , [14,15,16,3]])
A
array([[ 1,  2,  3,  0],
       [ 5,  6,  7, 22],
       [10, 11,  1, 13],
       [14, 15, 16,  3]])
# SUM of all numbers in a 2D array
A.sum()
129
# 2D_Array_Operations.py


import numpy as np

## Create a 2D array
```A = np.array([
    [1, 2, 3, 0],
    [5, 6, 7, 22],
    [10, 11, 1, 13],
    [14, 15, 16, 3]
])

print("2D Array (A):\n", A)
```
## Basic Operations 
```print("\nSum of all elements:", A.sum())
print("Maximum value:", A.max())
print("Minimum value:", A.min())
```
## Axis-based Operations 
```print("\nColumn-wise Minimum Values:", np.amin(A, axis=0))
print("Row-wise Minimum Values:", np.amin(A, axis=1))
```
## Statistical Operations 
```print("\nMean of all elements:", A.mean())
print("Mean using np.mean():", np.mean(A))
print("Median:", np.median(A))
print("50th Percentile (Median):", np.percentile(A, 50))
print("Variance:", np.var(A))
print("Standard Deviation:", np.std(A))
```
## Percentile Example 
# (using a sample array similar to arr2)
```arr2 = np.array([1, 5, 7, 10, 13, 14, 15, 17, 19, 20])
print("\n70th Percentile of arr2:", np.percentile(arr2, 70))
```
## Enumerate through 2D Array 
```print("\nEnumerating all elements in A:")
for index, value in np.ndenumerate(A):
    print(f"Index {index}: Value = {value}")
```
