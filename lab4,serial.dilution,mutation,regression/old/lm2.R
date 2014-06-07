tbM = read.csv("Means.csv");
pairs(tbM); #do all the pairwise plots

plot(tbM$OD600 ~ tbM$MeanConc);
m1 = lm( tbM$OD600 ~ tbM$MeanConc );
abline(m1, col="red");
summary(m1)

plot(tbM$OD600 ~ tbM$MeanCFU);
m2 = lm( tbM$OD600 ~ tbM$MeanCFU );
abline(m2, col="blue");
summary(m2)

tbM$MeanCFU[5] = NA; #remove the fifth data point
plot(tbM$OD600 ~ tbM$MeanCFU);
m2 = lm( tbM$OD600 ~ tbM$MeanCFU );
abline(m2, col="blue");
summary(m2)

plot( tbM$MeanCFU ~ tbM$MeanConc );
m3 = lm( tbM$MeanCFU ~ tbM$MeanConc );
abline( m3, col="green");
summary(m3)



