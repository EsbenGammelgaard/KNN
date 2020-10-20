library(class) # Package required for KNN
library(caret) # Package required for confusion matrix

# Importing data
mnist_raw <-
  read.csv(file.path("C:\\Users\\esbe1\\Desktop\\Portfolio", "mnist_train.csv"))

# Required inputs
size <- 2000 # Total observations included
split <- 50  # Split size where 90 means that it is 90/10
k <- 1

start <- Sys.time()

# Splitting between train and test data
mnist_train <- mnist_raw[1:(size * split * 0.01),-1]
mnist_test <- mnist_raw[(size * split * 0.01 + 1):size,-1]

# Splitting between train and test labels
mnist_train_labels <-
  factor(mnist_raw[1:(size * split * 0.01), 1])
mnist_test_labels <-
  factor(mnist_raw[(size * split * 0.01 + 1):size, 1])

# Training the algorithm
mnist_pred <-
  knn(
    train = mnist_train ,
    test = mnist_test ,
    cl = mnist_train_labels,
    k = k
  )

# Confusion Matrix and calculation of overall accuracy
cf_m  <- confusionMatrix(mnist_test_labels , mnist_pred)
cf_table <- cf_m$table
acc <- sum(diag(cf_table)) / sum(cf_table)

#logging results

stop <- Sys.time()
time <- stop - start
write.table(cf_table, "C:/Users/esbe1/Desktop/Portfolio/R-KNN-CF.txt", sep = ",")