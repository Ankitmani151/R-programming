"Hello world!"


#for assignment use <-
a<- 43
b<-"Ankit"

#logical opertaions
4<5

#using while loop
#we need to use print while executing else no need to use
while (FALSE){print("Hello")}

counter<- 1
while (counter<12) {
  print(counter)
  counter<- counter+1
}


#using for loop
for (i in 1:5) {
  print("Hello R")
}

#using rnorm function
x <- rnorm(1)
if (x>1){
  answer<-"greater than 1"
}

#use of if else statement
#how to remove variable
rm(answer)
x <- rnorm(1)
if (x>1){
  answer<-"greater than 1"
} else{
  if(x>=-1){
    answer<-"between -1 AND 1"
  }else {
    answer<-"Less than -1"
  }
}


#chaining/elseif  statement

rm(answer)
x <- rnorm(1)
if (x>1){
  answer<-"greater than 1"
} else if (x>=-1){
    answer<-"between -1 AND 1"
  }else {
    answer<-"Less than -1"
  }

