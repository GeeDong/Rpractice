#####
theUrl <- 'http://www.jaredlander.com/data/TomatoFirst.csv'
tomato <- read.table(file=theUrl, header= TRUE, sep=',')

head(tomato)


########
library(readr)
theUrl <- 'http://www.jaredlander.com/data/TomatoFirst.csv'
tomato2 <- read_delim(file =theUrl, delim= ',')

########
library(data.table)
tomato3 <- fread(input = theUrl, sep = ',', header = TRUE)


