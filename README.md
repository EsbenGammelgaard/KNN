# Digit recongnition using KNN in RStudio, Python & SAS

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

#### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

## Experiment setup
The goal is to use the KNN algorithm to classify the digits in the 10 different classes ranging from 0 to 9. The algorithm is tested with different amount of observations included in the training and test of the algorithm. For all excecutions the split between training and test is 50/50. Furthermore different K-values ranging from 1 to 20 are evaluated for the different executions.

## RStudio Results
#### Accuracy

| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|--------------|-------|-------|-------|--------|--------|
| 1000         |  0.82 |  0.80 |  0.77 |   0.76 |   0.73 |
| 2000         |  0.88 |  0.86 |  0.86 |   0.85 |   0.82 |
| 3000         |  0.90 |  0.91 |  0.90 |   0.88 |   0.86 |
| 4000         |  0.92 |  0.91 |  0.91 |   0.89 |   0.87 |

#### Run Time [s]

| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|--------------|-------|-------|-------|--------|--------|
| 1000         |  0.47 |  0.47 |  0.52 |   0.85 |   0.61 |
| 2000         |  5.25 |  5.33 |  5.73 |   5.91 |   5.70 |
| 3000         | 11.12 |  9.81 | 10.18 |   9.96 |   9.93 |
| 4000         | 25.85 | 24.51 | 26.23 |  25.62 |  23.45 |
### RStudio Results Conclusions
From the table above the trend seems to be that the larger amount of observations used the higher the accuracy can be achieved. Furthermore it can be seen that for all the included amounts of observations the best accuracy is achieved by using smaller K-values in the 1 to 3 area.

## Python Results
#### Accuracy
| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|--------------|-------|-------|-------|--------|--------|
| 1000         |  0.85 |  0.84 |  0.83 |   0.80 |   0.79 |
| 2000         |  0.90 |  0.89 |  0.88 |   0.86 |   0.81 |
| 3000         |  0.91 |  0.90 |  0.89 |   0.87 |   0.86 |
| 4000         |  0.93 |  0.92 |  0.91 |   0.91 |   0.89 |
#### Run Time [s]
| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|--------------|-------|-------|-------|--------|--------|
| 1000         |  0.48 |  0.48 |  0.47 |   0.47 |   0.48 |
| 2000         |  1.78 |  1.77 |  1.80 |   1.76 |   1.76 |
| 3000         |  3.48 |  3.43 |  3.43 |   3.43 |   3.66 |
| 4000         |  6.85 |  6.75 |  6.94 |   6.74 |   6.84 |
