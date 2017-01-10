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


#------------------------------------------------------
# R Data Frame - Data Frame Selection and Indexing
#------------------------------------------------------

days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

df <- data.frame(days,temp,rain)
df

df[1,]
df[,1]

#Selecting using column names
df[,"rain"]
df[1:5,1:2]
df[1:5,c("days","temp")]

df$days
df$temp
df["days"]

#Filtering with a subset condition

subset(df,subset = rain==T)
subset(df,subset = temp>23)

#Odering a Data Frame
sorted.temp <- order(df["temp"])
sorted.temp
df[sorted.temp,]

desc.temp <- order(-df["temp"])
desc.temp
df[desc.temp,]

desc.temp <- order(-df$temp)
df[desc.temp,]

#------------------------------------------------------
# R Data Frame - Overview
#------------------------------------------------------

#Creating Data Frames
empty <- data.frame()
c1 <- 1:10
c1
letters
c2 <- letters[1:10]
c2
df <- data.frame(col.name.1 = c1, col.name.2 = c2)
df

#Importing and Exporting Data


d2 <- read.csv('some.file.csv')
d2

## For Excel Files
## Load the readxl package
library(readxl)
## Call info from the sheets using read.excel
df <- read_excel('Sample-Sales-Data.xlsx',sheet='Sheet1')

## Output to csv
write.csv(df, file='some.file.csv')

#Getting Information about Data Frame

nrow(df)
ncol(df)
colnames(df)
rownames(df)
str(df)
summary(df)


#Referencing Cells
df[[5,2]]
df[[5,"col.name.2"]]
df[[2,"col.name.1"]] <- 9999
df

#Referencing Rows
df[1,]

#Referencing Columns
cars <- mtcars
head(cars)

mtcars$mpg
mtcars[,1]
mtcars[,"mpg"]
mtcars[["mpg"]]

#return to dataframe
mtcars["mpg"]

#muti colume
head(mtcars[c("mpg","cyl")])


#Adding Rows
df2 <- data.frame(col.name.1 = 2000, col.name.2="new")
df2

df.new <- rbind(df,df2)
df.new

df$newcol <- 2*df$col.name.1
df

df$newcol.copy <- df$newcol
head(df)

df[,"newcol.copy2"] <- df$newcol
head(df)

#Setting Column Names

## Rename all at once with a vector
colnames(df) <- c('col.name.1', 'col.name.2', 'newcol', 'copy.of.col2' ,'col1.times.2')
df


## Rename second column
colnames(df)[2] <- 'SECOND COLUMN NEW NAME'
df

#Selecting Multiple Rows
df[1:3,]
head(df,3)

df[-2,]

head(mtcars)
mtcars[mtcars$mpg >20,]

head(mtcars)
mtcars[mtcars$mpg > 20 &mtcars$cyl==6,1:3]
mtcars[mtcars$mpg > 20 &mtcars$cyl==6,c("mpg","cyl","disp")]

subset(mtcars, mpg>20 &cyl==6,1:3)

#Selecting Multiple Columns

mtcars[,1:3]
mtcars[,c(1:3)]
mtcars[,c("mpg","cyl","disp")]

#Dealing with Missing Data
any(is.na(mtcars))
any(is.na(mtcars$mpg))

##replace na to 0
df[is.na(df)] <- 0
##replace na with mean
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)
## delete selected missing data rows
df <- df[!is.na(df$col), ]


#------------------------------------------------------
# R Data Frame - trainning exercise
#------------------------------------------------------

#Ex 1: Recreate the following dataframe by creating vectors and using the data.frame function:

Age <- c(22,25,26)
Weight <- c(150,165,120)
Sex <- c("M","M","F")

df <- data.frame(Age,Weight,Sex,row.names = c("Sam","Frank","Amy"))
df

#Ex 2: Check if mtcars is a dataframe using is.data.frame()
is.data.frame(mtcars)

#Ex 3: Use as.data.frame() to convert a matrix into a dataframe:
mat <- matrix(1:25,nrow = 5)

mat <- as.data.frame(mat)
mat
is.data.frame(mat)

#Ex 4: Set the built-in data frame mtcars as a variable df. 
#We'll use this df variable for the rest of the exercises.

df <- mtcars

#Ex 5: Display the first 6 rows of df

head(df,6)

#Ex 6: What is the average mpg value for all the cars?
mean(df$mpg)

#Ex 7: Select the rows where all cars have 6 cylinders (cyl column)

subset(df,cyl==6)
df[df$cyl == 6,]

#Ex 8: Select the columns am,gear, and carb.

df[,c("am","gear","carb")]

#Ex 9: Create a new column called performance, 
#which is calculated by hp/wt.
df$Performance <- df$hp/df$wt
df

#Ex 10: Your performance column will have several decimal place precision. Figure 
#out how to use round() (check help(round)) to reduce this accuracy to only 2 decimal places.

help("round")

df$Performance <- round(df$Performance,2)
head(df)

#Ex 10: What is the average mpg for cars that have more than 100 hp AND a wt value of more than 2.5.

sub1 <- subset(df,hp>100 & wt>2.5)
sub1
mean(sub1$mpg,2)

## second option
mean(df[df$hp>100 & df$wt>2.5,]$mpg)

#Ex 11: What is the mpg of the Hornet Sportabout?

df["Hornet Sportabout",]$mpg


#------------------------------------------------------
# R List Basics
#------------------------------------------------------

v<-c(1:3)
m<-matrix(1:10,nrow = 2)
df<-mtcars

class(v)
class(m)
class(mtcars)
my.list <- list(v,m,df)
my.list


my.named.list <- list(sample.vector = v, sample.matrix = m, sample.df =df)
my.named.list
my.named.list$sample.vector
my.named.list[1]
my.named.list["sample.vector"]

class(my.named.list["sample.vector"])
class(my.named.list$sample.vector)
class(my.named.list[["sample.vector"]])

#combine list

double.list <- c(my.named.list,my.named.list)
double.list

str(my.named.list)
















