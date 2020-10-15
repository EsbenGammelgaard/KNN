library(class) # Package required for KNN
library(caret) # Package required for confusion matrix

# Importing data
mnist_raw <-
  read.csv(file.path("C:\\Users\\esbe1\\Desktop\\Portfolio", "mnist_train.csv"))

# Required inputs
size <- 2000 # Total observations included
split <- 50  # Split size where 90 means that it is 90/10 
k <- 1
size_matrix <- c(1000, 2000, 3000, 4000)
k_matrix <- c(1, 3, 5, 10, 20)

# Creating results Matrix
results <- matrix(1:20, nrow = 5)
results_time <- matrix(1:20, nrow = 5)

colnames(results) <- size_matrix
rownames(results) <- k_matrix
colnames(results_time) <- size_matrix
rownames(results_time) <- k_matrix

# Loops for multiples training and tests
for (k in k_matrix){
  for (size in size_matrix){
    start <- Sys.time()
    
    # Splitting between train and test data
    mnist_train <- mnist_raw[1:(size * split * 0.01), -1]
    mnist_test <- mnist_raw[(size * split * 0.01 + 1):size, -1]
    
    # Splitting between train and test labels
    mnist_train_labels <- factor(mnist_raw[1:(size * split * 0.01), 1])
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
    cf_half_ind  <- confusionMatrix(mnist_test_labels , mnist_pred)
    cf_half_ind$table
    acc_half_ind <-
      sum(diag(cf_half_ind$table)) / sum(cf_half_ind$table)
    
    #logging results
    
    stop <- Sys.time()
    results[toString(k),toString(size)] <- acc_half_ind
    results_time[toString(k),toString(size)] <- stop - start
}}