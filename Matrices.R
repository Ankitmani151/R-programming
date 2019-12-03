#Three ways to create matrix Matrix(),cbind(),rbind()
#1. Matrix
my.data<- 1:20
my.data

A<-matrix(my.data,4,5)
A
#output
#######[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5    9   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20

#finding a particular value from matrix
A[2,3] #output [1] 10

#value is getting filled by row
B<-matrix(my.data,4,5,byrow = T)
B
#output
######[,1] [,2] [,3] [,4] [,5]
#[1,]    1    2    3    4    5
#[2,]    6    7    8    9   10
#[3,]   11   12   13   14   15
#[4,]   16   17   18   19   20
B[2,5] #output[1] 10
#--------------------------------------#
#rbind()
r1<-c("I","am","happy")
r2<-c("what","a","day")
r3<-c(1,2,3)
C<-rbind(r1,r2,r3)
C
###[,1]   [,2] [,3]   
#r1 "I"    "am" "happy"
#r2 "what" "a"  "day"  
#r3 "1"    "2"  "3"  

#--------------------------------------#
#cbind()
c1<-1:5
c2<- -1:-5
D<-cbind(c1,c2)
D

#output
#####c1 c2
#[1,]  1 -1
#[2,]  2 -2
#[3,]  3 -3
#[4,]  4 -4
#[5,]  5 -5


