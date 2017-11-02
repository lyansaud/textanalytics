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

#1

fruit <- c("apple", "banana", "pear", "pineapple")

#2

str_detect(fruit, "a")

str_detect(fruit , pattern = "^a") #^ if it starts with an a

str_detect(fruit, pattern = "a$")  #$ if it ends with an a

str_detect(fruit, "[aeiou]")

str_detect(fruit, "[a-d]")

# detect a string that starts with "a" and ends with "e"

#3 normally returns apple
str_detect(fruit, pattern = "^a[a-z]*e$")

#4

phone <- "213 740 4826"

parser <- "[0-9]{3} [0-9]{3} [0-9]{4}"

str_detect(phone, parser)

phone1 <- c("213 740 4826", "213-740-4826")
parser1 <- "[0-9]{3}[ -][0-9]{3}[ -][0-9]{4}"
str_detect(phone1, parser1)

phone2 <- c("213 740 4826", "213-740-4826", "213.456.4567")
parser2 <- "[0-9]{3}[ -.][0-9]{3}[ -.][0-9]{4}"
str_detect(phone2, parser2)

phone3 <- c("213 740 4826", "213-740-4826", "213.456.4567", "(213) 740-4826")
parser3 <- "[(]?[0-9]{3}[)]?[ -.][0-9]{3}[ -.][0-9]{4}"
str_detect(phone3, parser3)

#5 \\b ends the text

cat(body[10])
cat(body[18])    

str_extract(string = body, pattern = parser)

#6
zipcode = c("90028", "90028-0809")

zipcodeparser <- "[0-9]{5}[-[0-9]{4}]?"

str_detect(zipcode, zipcodeparser)

