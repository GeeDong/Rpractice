##### apply


theMatrix <- matrix(1:9, nrow = 3)

apply(theMatrix, 1, sum) ## row

apply(theMatrix, 2, sum) ## column


##### aggregate

data(diamonds, package= 'ggplot2')
head(diamonds)

aggregate(price ~ color, diamonds, sum)
aggregate(price ~ color + cut, diamonds, sum)
aggregate(cbind(price, carat) ~ cut, diamonds, sum)
aggregate(cbind(price, carat) ~ color + cut, diamonds, mean)
