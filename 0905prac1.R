library(magrittr)

x <- 10:1
y <- -4:5
q <- c('aa', 'bbb', 'cccc', 'ddddd', 'eee', 'f')
q2 <- c('a', 'b', 'aa', 'bbb','aaa', 'cccc', 'ddddd', 'bbb', 'aa', 'f', 'f', 'eee', 'cccc', 'aa')

asfact <- as.factor(q2)
asnum <- as.numeric(asfact)

deg <- factor(c('High', 'BS', 'MS', 'PhD'), levels = c('High', 'BS', 'MS', 'PhD'), ordered = TRUE)

z<- c(1,2,NA,9,3,NA,3)
is.na(z)
mz <- mean(z, na.rm =TRUE)

x %>% mean
z %>% is.na %>% sum