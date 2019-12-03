

#we use fuction combine 'c' to define vectors
MyFirstVector<- c(1,45,86,35,21,27)
MyFirstVector

#values are assumed as float by  defalut, To use the as integers use 'L'
intege_check<- c(5L,12L,15L,19L)

#creating charachter vector
charachter_check<- c("a","ghh","67","9Ad")

#all the elements of vector will be same data type

#use of sequence 'seq' funtion
seq(1,15) #ouput looks line  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15


z<-seq(1,15,4)
z    # output [1]  1  5  9 13


#repetation 'rep' function is used to replicate
rep(3,8) #output [1] 3 3 3 3 3 3 3 3


#accesing a particular number from vector
w<-c(41,5,9,48,56)  #created vector w
w[2]

#accessing some values from vetor
w[2:5] #output [1]  5  9 48 56

#accesing some diffrent values
w[c(1,3,5)]  #output [1] 41  9 56

#operation on two vectors (we can use '+','-','*','/','>')
v1<-c(5,63,12,26)
v2<-c(1,26,3,44)
z1<-v1+v2
z1   #output [1]  6 89 15 70

#recycling of vector
w1<-c(5,10,15,20)
w2<-c(1,2,3,4,5,6,7,8,9)
w1+w2 #output [1]  6 12 18 24 10 16 22 28 14

#R - Specific programming for loop
x<-rnorm(5)
x
for (i in x) {
  print(i)
}

#how to print value of x one by one
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop
for (j in 1:5){
  print(x[j])
}

#--------------------------------------------2nd part
#vectorized vs devectorized 
N<-100
a<-rnorm(N)
b<-rnorm(N)

#Vectorized approach
C<-a*b

#Devectorized approach
d<-rep(NA,N)# assigning blank spaces/allocatingmemory

for (i in 1:N) {
  d[i]<-a[i]*b[i]
}

#Output is same but devectorized is very slow as it need to find the data type every time unlike vectorized where it know that all input are same data type

# use of rnorm()
#generates random numbers around mean default values mean=0 and sd=1
rnorm(5,mean = 5,sd = 1) #output [1] 5.836193 4.490093 4.962394 3.415975 4.982117

#use of seq()
#used for sequence generaton
seq(from=10,to=20,length.out = 50) #genrates 50numbers between 10 and 20 with step size(from-to/(N-1))

round(sqrt(24),10) #output [1] 4.898979











