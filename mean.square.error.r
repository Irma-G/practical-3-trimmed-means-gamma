mean.square.error <- function(theta.hat,theta) {
#Purpose: 
#  Calculates mean squared errors for a matrix of estimates
#   where the rows are the replicates and the columns are different
#   estimators
#Inputs:
# theta.hat - vector of estimates.  Rows = replicates; Cols = estimators.
# theta - true value
#Outputs:
# vector of MSEs - one for each estimator

#count number of replicates for each estimator
  n <- dim(theta.hat)[1]
#count number of estimators
  num.ests <- dim(theta.hat)[2]
#create vector for results
  MSE.vec <- numeric(num.ests)
  
#Work out the sum of squared errors for each estimator:
#Go through each replicate
  for(i in 1:n) {
#go through each estimator
    for(j in 1:num.ests) 
#Add the squared error for this replicate to the running total in MSE.vec
      MSE.vec[j] <- 
  }
#Turn from a sum of squared errors into mean square error by dividing by n
  MSE.vec <- MSE.vec/n
  
  return(MSE.vec)
} 