#-----------------------------
# R Basis - airthmetric
#-----------------------------

1+2
100+11
12.2+13.1
5-3
5 - 3
1/2
2/3
2^3
4^4
100*2+50/2
100*(2+50)/2
5/2
5%%2
10%%8

#-----------------------------
# R Basis - variable
#-----------------------------

variable <- 100
variable

bank <-1000
bank

#common style of naming the variable
bank.account <- 100

deposit <-20
bank.account <- bank.account + deposit

bank.account

#-----------------------------
# R Basis - data type
#-----------------------------

#numeric 

a <- 2.2
b<-7

# logical
a <- T
a <- TRUE
a

# string

a<- 'hello'
b<- "world"
a
b

#find the class
class(a)
class(32.2)
class(F)

#-----------------------------
# R Basis - VECTOR Bascis
#-----------------------------

nvec <- c(1,2,3,4,5)
nvec
class(nvec)
cvec <- c("U","S","A")
cvec
class(cvec)
lvec <- c(T,F)
lvec
class(lvec)

#rule 1 - can not mix the data type in same vector

v <- c(TRUE,20,40)
v
class(v)

#vector names

temps <- c(72,71,68,73,69,75,76)
temps

names(temps) <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")
temps

days <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")
days

names(temps) <- days
temps

#-----------------------------
# R Basis - VECTOR Operations
#-----------------------------

v1 <- c(1,2,3)
v2 <- c(5,6,7)
v1+v2
v1-v2
v1*v2
v1/v2

#Functions with Vectors
sum(v1)
sum.of.vec <- sum(v1)
sum.of.vec

mean(v1)
sd(v1)
max(v1)
min(v1)

prod(v1)
prod(v2)

#---------------------------------------
# R Basis - Vector Indexing and Slicing
#----------------------------------------

v1 <- c(100,200,300)
v2 <- c('a','b','c')
v1
v2

v1[2]
v2[3]

v1[1:2]
v1[c(1,2)]
v2[c(1,3)]

v <- c(1,2,3,4,5,6,7,8,9,10)
v
v[2:4]
v[7:10]

v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')
v

v[2]
v["b"]

# Notice how we can call out of order!
v[c('a','c','b')]

#Comparison Operators and Selection
v[v>2]
v>2

my.filter <- v>2
my.filter
v[my.filter]

#---------------------------------------
# R Basis - getting help
#----------------------------------------

help(vector)
??vector
help.search('vector')

#---------------------------------------
# R Basis - Comparison Operators
#----------------------------------------

#Greater Than,Greater Than or Equal to
5 > 6
6 >= 5
  
  
v1 <- c(1,2,3)
v2 <- c(10,20,30)
v1 < v2

#Less Than and Less than or Equal To

2 <= 2
## notes - Be very careful with comparison operators and negative numbers! Use spacing to keep things clear. An example of a dangerous situation

var <- 2
var
var < -1

#Not Equal !=
5 != 5

#Equal ==
5 == 5

#Vector Comparisons
v <- c(1,2,3,4,5)
v < 2
v == 3


#---------------------------------------
# R Basis - trainning exercise
#----------------------------------------

#Q1 - What is two to the power of five?
2^5

#Q2 - Create a vector called stock.prices with the following data points: 23,27,23,21,34

stock.prices <- c(23,27,23,21,34)
stock.prices

#Q3 -Assign names to the price data points relating to the day of the week, starting with Mon, Tue, Wed, etc...

names(stock.prices) <- c("Mon","Tues","Wed","Thur","Fri")
stock.prices
  
#Q4 -What was the average (mean) stock price for the week? 

mean(stock.prices)

#Q5 -Create a vector called over.23 consisting of logicals that correspond to the days where the stock price was more than $23
over.23<- stock.prices>23
over.23

#Q6 - Use the over.23 vector to filter out the stock.prices vector and only return the day and prices where the price was over $23

stock.prices[over.23]

#Q7 -Use a built-in function to find the day the price was the highest

v3 <- stock.prices==max(stock.prices)
v3
stock.prices[stock.prices==max(stock.prices)]
