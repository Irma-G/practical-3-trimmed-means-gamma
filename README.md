# mockprac3
beginnings of 4113 practical 3


The simulation study looks at the performance of a robust estimator of a sample mean.  

This estimator is the _trimmed mean_, more robust to outliers than the standard type of 
mean.  If you've not come across it already, look it up in any stats book.  We will generate data from an awkward distribution and see how the trimmed mean performs.  Our measure of performance will be the mean squared error (MSE) -- i.e., the average of the squared difference between estimated mean and true mean.  The smaller the MSE, the closer, on average, the estimated mean is to the true mean.  We will try different levels of trimming, from $\alpha$=0 (i.e., the mean), through 0.1 (i.e., 10% smallest and 10% largest values from the samples deleted) to a maximum of 0.5, which is the sample median (because all other observations have been trimmed away leaving only the median value).

The distribution we will use is a mixture of a normal with a non-central t distribution.  The random variable of interest **Z** is defined as
![]()
