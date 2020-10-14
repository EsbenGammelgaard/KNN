# Digit recongnition using KNN in RStudio, Python & SAS

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

## RStudio
See R file for the full code including comments.

### RStudio Results
Below two tables are included. The first table shows the accuracies achieved on the test data with a 50/50 split between test and training. The second tables shows the required computational time for the same computations.
| Observations |     K = 1 |     K = 3 |     K = 5 |    K = 10 |    K = 20 |
|-----------|----------:|----------:|----------:|----------:|----------:|
|      1000 |      0.82 |     0.796 |     0.772 |     0.762 |     0.726 |
|      2000 |     0.882 |     0.861 |     0.855 |      0.85 |     0.819 |
|      3000 | 0.9033333 | 0.9073333 | 0.8953333 | 0.8846667 | 0.8633333 |
|      4000 |     0.915 |    0.9105 |     0.911 |     0.892 |     0.872 |

Computational time Table missing

#### RStudio Results Conclusions
From the table above the trend seems to be that the larger amount of observations used the higher the accuracy can be achieved. Furthermore it can be seen that for all the included amounts of observations the best accuracy is achieved by using smaller K-values in the 1 to 3 area.
