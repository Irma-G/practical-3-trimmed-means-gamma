do.sim <- function(mix.par=0.5,mu1=5,sigma1=2,mu2=7,df=3,n=30,
                 alpha.vec=c(0,0.1,0.2), M=1000) {
#Purpose:
# Runs a simulation to compute the RMSEs for trimmed means from 
#  samples taken from a 2 component normal and t mixture model
#Inputs:

#Output: List containing elements:

  
  
#initialize matrix of outputs
  est.matrix <- matrix(NA,M,length(alpha.vec)) 
#run simulation
  for(simulation in 1:M) {
    temp <- mix.dist(n,mix.par,mu1,sigma1,mu2,df) 
    est.matrix[simulation, ] <- estimate.mean(temp,alpha.vec) 
  }
  
#work out the expected value of the input distribution
  E.Z <- get.expectation(mix.par,mu1,mu2)
  
#Calculate MSEs   
  mean.square.error <- mean.square.error(est.matrix,E.Z)
  
  return(list(MSE=mean.square.error, ests=est.matrix, mu=E.Z))
  
} 