a<-2+3
a
a=2+3

b<-a+a
b
X<-c(1,2,3,4)
X
Y<-1:4
X==Y
?all.equal
w<-3-2.9
?==0.1
w==0.1
bogus.mean<-function(x,cheat){
  sum.of.x<-sum(x)
  n<-length(x)
  true.mean<-sum.of.x/n
  (1+cheat)*true.mean
}
bogus.mean(x=X, cheat = 0.1)

install.packages('deSolve')
library(deSolve)
?ode

exp.growth<- function(t,y,p){
  N<-y[1]
  with(as.list(p), {
    dN.dt<- r*N
    return(list (dN.dt))
  })
}
p<-c ('r'=0.1)
y0<-('N'=1)
t<-1:25


sim<- ode(y=y0, times = t, func= exp.growth, parms = p, method = 'lsoda')
sim<- as.data.frame(sim)
sim
plot(N ~ time, data=sim, type = 'l')


