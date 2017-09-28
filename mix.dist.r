mix.dist <- function(n,mix.par,mu1,sigma1,mu2,df) {
#Purpose:
#  Create n samples from the mixture distribution
#Inputs:
# n - number of samples to return
# mix.par - pi in the practical notes -- proportion of samples from norm dist
# mu1 - mean of norm dist
# sigma1 - sd of norm dist
# mu2 - mean of t dist
# df - df for t dist
#Outputs:
# vector of n values from the mixture distribution
#Implementation note:
# Uses vectorization - generates 'n' samples from both distributions (hmmm...)

#sample n values from a Bernoulli dist, to determine parent distribution for each data point
  nu <- rbinom(n,1,mix.par)
#sample values from the normal
  X <- rnorm()
#sample values from the t
  Y <- mu2 + rt(n,df)
# combine
  Z <- 
  return(Z)
}