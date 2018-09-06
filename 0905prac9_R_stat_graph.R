library(ggplot2)
data(diamonds)

hist(diamonds$carat, main='Carat Histogram', xlab='Carat')
plot(price ~ carat, data = diamonds)
boxplot(diamonds$carat, ylab='carat')

ggplot(data = diamonds) + geom_histogram(aes(x=carat))
ggplot(data = diamonds) + geom_density(aes(x=carat),fill='grey50')

ggplot(diamonds, aes(x=carat, y=price)) +geom_point()

g<- ggplot(diamonds, aes(x=carat,y=price))
g+geom_point(aes(color= color))

