library(ei)
data(sample)
form <- t ~ x
dbuf = ei(form,total="n",data=sample)
summary(dbuf)
eiread(dbuf, "betab", "betaw")
plot(dbuf, "tomog", "betab", "betaw", "xtfit")
