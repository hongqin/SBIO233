set.seed(2014)
N=500
x = rnorm(N)
error = rnorm(N)
Rsquared= 0.75
rho = sqrt(Rsquared)
y= rho*x + sqrt(1-rho^2)*error
summary(lm(y ~ x ))
model = lm(y ~ x )
plot( y ~ x, col='blue')
abline( model, lwd=3 )
title( paste("R2 = ", Rsquared))