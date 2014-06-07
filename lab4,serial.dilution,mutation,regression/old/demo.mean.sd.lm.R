# calculate means
x.bar = mean(x)

# calculate standard deviations
x.sd = sd(x);


read.csv("Concentration.csv");

tb = read.csv("Concentration.csv"); #load data into R
tb #see the data

pairs(tb); #do all the pairwise plots

plot( tb$Conc ~ tb$OD600 ) #plot
plot( tb$Conc ~ tb$OD600,xlab="OD600", ylab="Cell # per ul" ) #plot

m = lm( tb$Conc ~ tb$OD600) #linear regression bw Conc and OD600
summary(m); #find R-squared and p-value
abline( m, col="red");
text( 1.3, 1500000, "R2=0.43 p=0.075");


################
#Now remove the odd point
tb = tb[1:7, ] #pick only the first 7 rows

plot( tb$Conc ~ tb$OD600 ) #plot
m = lm( tb$Conc ~ tb$OD600) #linear regression bw Conc and OD600
summary(m); #find R-squared and p-value
abline( m, col="red");
text( 1.3, 500000, "R2=0.86 p=0.00024");




