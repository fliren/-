

monty<-function(n){
  x<-c("a","b","c")
  out<-rowSums(sapply(1:n,function(t){
  choose<-sample(x,1)
  select<-sample(x,1)
  
  open<-sample(x[x!=choose & x!=select],1)
  y<-sample(x[x!=open & x!=choose]) == select
  z<-choose == select
  c(y,z)
  }
  ))
  data.frame(time=n,switch=out[1],pro_1=out[1]/n,not_switch=out[2],pro_2=out[2]/n)
}
t(sapply(c(10,100,200),monty))
