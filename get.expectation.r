get.expectation <- function(mix.par, mu1, mu2){
#Purpose: 
# compute the expected value of a mixture with 
# mix proportion = mix.par
# means =  mu1 and mu2
  expected.value <- mix.par*mu1+(1-mix.par)*mu2
  return(expected.value)
}