#Week 10

setwd("~/Desktop/DSO 545/Data")
library(ggplot2)
library(dplyr)
library(scales)
library(knitr)
library(tidyr)
library(lubridate)
library(ggmap)
library(stringr)

#1
print("a")

print('"')

cat("\"")

cat("ab\ncd")

cat("a\tb\nc\td")

#2

cat(":-\\")

cat("(^_^\")")

cat("@_'-'")

cat("\\m/")


#3 
?str_locate

#4

str_locate( string = "great", pattern = "a")

list <- c("great", "fantastic", "super")

str_locate(list, "a")

str_locate_all(list, "a")

occurance <- str_locate_all(list, "a")

occurance[1]
# occurance[1,1] this is wrong

occurance[[1]]
x = occurance[[1]]

x[1]
#or

occurance[[1]][1]


#5
#test
str_sub(string = "testing", start = 1, end = 3)
#same as 

str_sub("testing", end = 3)
#ting
nchar("testing")

str_sub(string = "testing", start = 4, end = 7)
#or
str_sub("testing", start = 4, 
        end = str_length("testing"))

#test
str_sub(string = "testing", start = 1, end = 4)

#6

input <- c("abc", "defg")

str_sub(input, c(2,3))

#7
emails <- readRDS("email.rds")
emails

emails[1]
cat(emails[1])
cat(emails[10])


str_locate(string = emails[1],
           pattern = "\n\n")

#8

header1 <- str_sub(string = emails[1],
                   start = 1,
                   end = 842)

header1
cat(header1)

body1 <- str_sub(emails[1], start = 842)

cat(body1)

#9 

str_split(string = header1, pattern = "\n")


#10

breaks <- str_locate(string = emails,
                     pattern = "\n\n") 

metadata <- str_sub(string = emails, 
                    start = 1,
                    end = breaks[,1])

body <- str_sub(strin = emails,
                start =  breaks[,2])

cat(metadata)
cat(body)

