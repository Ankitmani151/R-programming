N<-100000000
counter<-0
answer<-0
for (i in rnorm(N)) {
  if(i>-1 & i<1){
    counter<-counter+1
  }
}
answer<-counter/N
answer

