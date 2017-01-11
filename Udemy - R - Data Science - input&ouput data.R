#------------------------------------------------------
# R - CSV Input and Output
#------------------------------------------------------

setwd("C:/Users/EVE/Desktop/Udemy/R-data science/2. R input and output data")
list.files(getwd())

ex <- read.csv("example.csv")
head(ex)
tail(ex)
class(ex)

write.csv(ex, file = "my_new_example.csv")

#------------------------------------------------------
# R - Excel File with R
#------------------------------------------------------

install.packages("readxl")
install.packages("xlsx")
library(readxl)
library("xlsx")
excel_sheets("Sample-Sales-Data.xlsx")

df <- read_excel("Sample-Sales-Data.xlsx", sheet = "Sheet1")
head(df)
sum(df$Value)
summary(df)

entire.workbook <- lapply(excel_sheets("Sample-Sales-Data.xlsx"),read_excel,path="Sample-Sales-Data.xlsx")
entire.workbook

#Writing to Excel
df <- data.frame(matrix(1:10))
write.xlsx(df, "output.xlsx")

## it doesnt let me install rjava & xlsx package in this computer.....

#------------------------------------------------------
# R - SQL With R
#------------------------------------------------------

install.packages("RODBC")
library(RODBC)


myconn <-odbcConnect("Database_Name", uid="User_ID", pwd="password")
dat <- sqlFetch(myconn, "Table_Name")
querydat <- sqlQuery(myconn, "SELECT * FROM table")
close(myconn)


## MySQL
install.packages("RMySQL")

##Oracle
install.packages("ROracle")

##JDBC
install.packages("RJDBC")

#------------------------------------------------------
# R - web Scraping with R
#------------------------------------------------------

install.packages("rvest")
demo(package = "rvest")

demo(package = "rvest", topic = "tripadvisor")

## or use https://www.import.io/ to transform web page to the data

Rogue.One <- read_html("http://www.imdb.com/title/tt3748528/")

RATING <- Rogue.One %>% 
          html_node("strong span") %>%
          html_text() %>%
          as.numeric()
RATING
CAST <- Rogue.One %>%
        html_nodes("#titleCast .itemprop span") %>%
        html_text()
CAST
Message.Board <-  Rogue.One %>%
                  html_nodes("table") %>%
                  .[[2]] %>%
                  html_table()
Message.Board
data.frame(RATING,CAST, stringsAsFactors = FALSE) %>% View()
















