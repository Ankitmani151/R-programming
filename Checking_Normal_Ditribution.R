#number of samples for which we are checking
#higher the value of N output is more accurate answer=68.2
N<-100000000
counter<-0
answer<-0
#In R i is not index but the value of position itself
for (i in rnorm(N)) {
  if(i>-1 & i<1){
    counter<-counter+1
  }
}
answer<-counter/N
answer

