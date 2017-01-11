#------------------------------------------------------
# R Basic Programming - Logical Operators
#------------------------------------------------------

x<-10

#AND &
(x>5) & (x<20)
(x>5) & (x<20) &(x==9)

#OR |
(x==10) | (x==100)

#NOT !

!(x==1)
!!(x==1)



df <- mtcars
df

subset(df,mpg >20)
df[df$mpg>20,]

df[(df$mpg>20) & (df$hp >100),]
df[(df$mpg>20) | (df$hp >100),]


#------------------------------------------------------
# R Basic Programming - if, else, else if Statements
#------------------------------------------------------

x<-12
if.statement <- 
    if (x==10) {
      print("X is equal to 10!")
} else if (x==12){
      print("X is equal to 12!")
} else {
      print("X is NOT equal to 10 OR 12!")
}


#if
hot <- FALSE
temp <- 85

if (temp>80){
    hot <- T
}

print(hot)

#else
temp <- 95

if (temp > 90){
  print("Hot outside!")
} else{
  print("Its not too hot today!")
}

#else if

temp <- -10

if (temp > 80){
  print("Hot outside!")
} else if(temp<=80 & temp>=50){
  print('Nice outside!')
} else if(temp <50 & temp >= 32){
  print("Its cooler outside!")
} else{
  print("Its really cold outside!")
}

##final example

ham <- 12
cheese <- 11

report <- 'blank'


if(ham >= 10 & cheese >= 10){
  report <- "Strong sales of both items"
  
}else if(ham == 0 & cheese == 0){
  report <- "Nothing sold!"
}else{
  report <- 'We had some sales'
}
print(report)


#------------------------------------------------------
# R Basic Programming - Condition Training Exercise
#------------------------------------------------------


x <- 1

if (x ==1){
  print("Hello")
}

#Ex 1: Write a script that will print "Even Number" if the variable x is an even number, 
#otherwise print "Not Even":

x<-3
if (x%%2==0){
    print("Even Number")
}else {
    print("Not Even")
}
#Ex 2: Write a script that will print 'Is a Matrix' if the variable x is a matrix, 
#otherwise print "Not a Matrix". Hint: You may want to check out help(is.matrix)

x<- matrix(1:5)

if (is.matrix(x)==T){
  print("Is a Matrix")
}else {
  print("Not a Matrix")
}

#Ex 3: Create a script that given a numeric vector x with a length 3, will print out 
#the elements in order from high to low. You must use if,else if, and else statements for 
#your logic. (This code will be relatively long)

x <- c(20,25,131)

if ((x[1]>x[2] & x[2]>x[3])==T){
      c(x[1],x[2],x[3])
}else if ((x[1]>x[3] & x[1]>x[2] &x[3]>x[2])==T){
      c(x[1],x[3],x[2])
}else if ((x[1]<x[2] & x[2]<x[3])==T){
      c(x[3],x[2],x[1])  
}else if ((x[1]<x[3] & x[2]<x[3] & x[2]<x[1])==T){
      c(x[3],x[1],x[2]) 
}else if ((x[1]<x[2] & x[3]<x[2] & x[1]<x[3])==T){
      c(x[2],x[3],x[1])
}else {
      c(x[2],x[1],x[3])
}

#solution! better
x <- c(3,7,1)

if (x[1] > x[2]){
  fir <- x[1]
  sec <- x[2]
} else {
  fir <- x[2]
  sec <- x[1]
}
if ( x[3] > fir & x[3] > sec ) {
  thi <- sec
  sec <- fir
  fir <- x[3]
} else if ( x[3] < fir & x[3] < sec ) {
  thi <- x[3]
} else {
  thi <- sec
  sec <- x[3]
}

print(paste(fir, sec, thi))
#Ex 4: Write a script that uses if,else if, and else statements to print the max element 
#in a numeric vector with 3 elements.

x <- c(20, 100, 1000)

if ((x[1]==max(x))==T) {
    x[1]
}else if ((x[2]==max(x))==T) {
    x[2]
}else x[3]



#------------------------------------------------------
# R Basic Programming - while loops
#------------------------------------------------------

x <-0
while (x<10){
    print(paste0("X is: ", x))
    x <- x+1
    if (x==5){
        print("X is now equal to 5! Break loop!")
        break
    }
}

#------------------------------------------------------
# R Basic Programming - for loops
#------------------------------------------------------

V<- c(1:5)
V

for(temp.var in V) {
  print("hello")
}

for (temp.var in V) {
      result <- temp.var + 1
      print("The temp.var plus 1 is equal to: ")
      print (result)
}



my.list <- list(c(1:5),mtcars,12)
my.list

for(item in my.list) {
  print(item)
}

mat <- matrix(1:25, nrow=5)
mat

for (num in mat) {
  print(num)
}

for (row in 1:nrow(mat)){
  for (col in 1:ncol(mat)) {
      print (paste("The selected row is:",row)) 
      print (paste("The Element at row:",row, "and col: ", col, "is ", mat[row,col]))
    }
}


#------------------------------------------------------
# R Basic Programming - Functions
#------------------------------------------------------

hello <- function(name){
    print (paste("Hello",name))
}

hello("Mitch")



hello <- function(name="Little Trent"){
  print (paste("Hello",name))
}

hello()

add_num <- function (num1,num2){
    print(num1+num2)
}

add_num(3,2)

add_num <- function (num1,num2){
  my.sum <- num1+num2
  return(my.sum)
}

result <- add_num(3,2)
result

#Scope

times5 <- function(num){
   my.result <- num*5
   return(my.result)
}

my.output <- times5(100)
my.output


v <- "I'm a global variable"
stuff <- "I'm global stuff"

fun <- function(stuff){
  print(v) 
  stuff <- 'Reassign stuff inside func'
  print(stuff)
}

fun(stuff)
print(stuff)


#------------------------------------------------------
# R Basic Programming - Function Training Exercise
#------------------------------------------------------

#Ex 1: Create a function that will return the product of two integers.

prod <- function(int1,int2){
    my.result <- int1*int2
    return(my.result)
}

prod(3,4)


#Ex 2: Create a function that accepts two arguments, an integer and a vector of integers. 
#It returns TRUE if the integer is present in the vector, otherwise it returns FALSE. 
#Make sure you pay careful attention to your placement of the return(FALSE) line in your 
#function!

v<- c(1,2,3)

num_check <- function(num,v){
    if (num == v[1]|num == v[2]|num == v[3]){
      return("TRUE")
      }else {return("FALSE")
    }
}

num_check(2,c(1,2,3))
num_check(2,c(1,4,5))

#Ex 3: Create a function that accepts two arguments, an integer and a vector of integers. 
#It returns the count of the number of occurences of the integer in the input vector.

num_count <- function(num,vec){
  count = 0
  for (x in vec) {
    if(x==num){
        count = count + 1
    }
  }
  return(count)
}
num_count(3,c(1,2,3,3,3))

#learning - 1. for loop review - x in vec 2. if statement - if condition match, do something 3. count- not need to be 
#in function, can be simply count + 1. 4 count =0 start after function 5. return count close after for loop


#Ex 4: We want to ship bars of aluminum. We will create a function that accepts an integer 
#representing the requested kilograms of aluminum for the package to be shipped. 
#To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms 
#each). Return the least number of bars needed. For example, a load of 6 kg requires 
#a minimum of two bars (1 5kg bars and 1 1kg bars). A load of 17 kg requires a minimum 
#of 5 bars (3 5kg bars and 2 1kg bars).

bar_count <- function(num){
    count<- as.integer(num/5)+num%%5
    return(count)
}

bar_count(22)


#Ex 5: Create a function that accepts 3 integer values and returns their sum. However, if 
#an integer value is evenly divisible by 3, then it does not count towards the sum. 
#Return zero if all numbers are evenly divisible by 3. Hint: You may want to use the 
#append() function.



summer <- function(x1,x2,x3){
    out <- (0)
    if (x1%%3!=0){
      out<- append(x1,out)
    }
    if (x2%%3!=0){
      out<- append(x2,out)
    }
    if (x3%%3!=0){
      out<- append(x3,out)
    }
    return(sum(out))
}

summer(1,2,3)

#Ex 6: Create a function that will return TRUE if an input integer is prime. Otherwise, return FALSE. 
#You may want to look into the any() function. There are many possible solutions to this problem.


Prime_check <- function (num){
  if (num==2){
    return(T)
  }else if(any(num%%2:(num-1)==0)){
    return(F)
  }else {return(T)
  }
}

Prime_check(11)

# Alternatively:
prime_check <- function(num){
  # Could put more checks for negative numbers etc...
  if (num == 2) {
    return(TRUE)
  }
  for (x in 2:(num-1)){
    
    if ((num%%x) == 0){
      return(FALSE)
    }
  }
  return(TRUE)
  
}







