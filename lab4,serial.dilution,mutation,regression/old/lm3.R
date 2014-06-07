tb = read.csv("CFU.csv"); #read the file

plot(tb$CFU ~ tb$OD600);

tb = tb[1:12,] # pick the first 12 rows, WHY?

plot(tb$CFU ~ tb$OD600);
m = lm( tb$CFU ~ tb$OD600)
abline(m, col="red");
summary(m)


