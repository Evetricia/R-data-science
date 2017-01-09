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

#---------------------------------------
# R Matrices - Creating a Matrix
#----------------------------------------


v <- 1:10
v
matrix(v)
matrix(v,nrow=2)
matrix(1:12,byrow=FALSE,nrow=4)
matrix(1:12,byrow=T,nrow=4)

#Creating Matrices from Vectors

goog <- c(450,451,452,445,468)
msft <- c(230,231,232,236,228)
stocks <-c(goog,msft)
stocks

stock.matrix <- matrix(stocks,byrow=T,nrow=2)
stock.matrix

days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('GOOG','MSFT')

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
stock.matrix

#---------------------------------------
# R Matrices - Matrix Arithmetic
#----------------------------------------

mat <- matrix(1:25, byrow=T, nrow=5)
mat
mat*2
mat/2
mat^2
1/mat

mat >15
mat[mat>15]
mat + mat
mat/mat
mat^mat
mat*mat

#True Matrix Multiplication
mat %*% mat

#---------------------------------------
# R Matrices - Matrix Operations
#----------------------------------------

stock.matrix

colSums(stock.matrix)
rowSums(stock.matrix)
rowMeans(stock.matrix)

#Binding columns and rows

FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix,FB)
tech.stocks

avg <- rowMeans(tech.stocks)
avg

tech.stocks <- cbind(tech.stocks,avg)
tech.stocks


#----------------------------------------------
# R Matrices - Matrix Selection and Indexing
#----------------------------------------------

mat <- matrix(1:50, byrow = T, nrow = 5)
mat

mat[1,]
mat[,1]
mat[1:3,]
mat[1:2,1:3]
mat[,9:10]
mat[2:3,5:6]
mat[4:5,3:5]

#----------------------------------------------
# R Matrices - Factor and Categorical Matrices
#----------------------------------------------

animal <- c('d','c','d','c','c')
id <- c(1,2,3,4,5)

factor(animal)
fact.ani <- factor(animal)

#Nominal categorical variables -- don't have any order, such as dogs and cats (there is no order to them). 
#Ordinal categorical variables -- do have an order.

ord.cat <- c('cold','med','hot')

temps <- c('cold','med','cold','med','hot','hot','cold')
temps
fact.temp <- factor(temps,ordered=T,levels=c('cold','med','hot'))
fact.temp
summary(fact.temp)
summary(temps)

#---------------------------------------
# R Matrices - trainning exercise
#----------------------------------------

#Ex 1: Create 2 vectors A and B, where A is (1,2,3) and B is (4,5,6). 
#With these vectors, use the cbind() or rbind() function to create a 2 by 3 matrix 
#from the vectors. You'll need to figure out which of these binding functions is the correct choice.

A <- c(1,2,3)
B <- c(4,5,6)

rbind(A,B)


#Ex 2: Create a 3 by 3 matrix consisting of the numbers 1-9. Create this matrix using the 
#shortcut 1:9 and by specifying the nrow argument in the matrix() function call. Assign this 
#matrix to the variable mat

mat <- matrix(1:9, byrow = F, nrow = 3)
mat

#Ex 3: Confirm that mat is a matrix using is.matrix()

is.matrix(mat)



#Ex 4: Create a 5 by 5 matrix consisting of the numbers 1-25 and assign it to the variable mat2. 
#The top row should be the numbers 1-5.

mat2 <- matrix(1:25, byrow = T, nrow = 5)
mat2

#Ex 5: Using indexing notation, grab a sub-section of mat2 from the previous exercise that 
#looks like this:
#[7,8]
#[12,13]

mat2[2:3,2:3]

#Ex 6: Using indexing notation, grab a sub-section of mat2 from the previous exercise that 
#looks like this:
#[19,20]
#[24,25]

mat2[4:5,4:5]

#Ex 7: What is the sum of all the elements in mat2?

sum(mat2)


#Ex 8: Ok time for our last exercise! Find out how to use runif() to create a 4 by 5 matrix 
#consisting of 20 random numbers (4*5=20).

?runif
mat3 <- matrix(runif(20,0,100),byrow = F,nrow = 4)
mat3

#---------------------------------------
# R Data Frame - Dataframe Basics
#----------------------------------------

# Dataframe about states
state.x77

# US personal expense
USPersonalExpenditure

# Women 
women


data()
WorldPhones

head(state.x77)
tail(state.x77)
str(state.x77)
summary(state.x77)

#Creating Data frames


days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)


df <- data.frame(days,temp,rain)
df
str(df)
summary(df)













