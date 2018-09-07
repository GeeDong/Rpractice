#### normal distribution
rnorm(n=10, m=100, sd=20)

randNorm10 <- rnorm(10)
dnorm(randNorm10)
dnorm(c(-1,0,1))

randNorm <- rnorm(30000)
randDens <- dnorm(randNorm)

library(ggplot2)

ggplot(data.frame(x=randNorm, y=randDens)) + aes(x=x,y=y) + geom_point() + labs(x = 'random normal variables', y = 'density')

pnorm(randNorm10)
pnorm(-1)
pnorm(0)
qnorm(0.5)

p <- ggplot(data.frame(x = randNorm, y = randDens)) + aes(x=x,y=y) + geom_line() + labs(x='x', y= 'Density')

neg1Seq <- seq(from = min(randNorm), to = -1, by = .1)
lessThanNeg1 <- data.frame(x = neg1Seq, y= dnorm(neg1Seq))

lessThanNeg1 <- rbind(c(min(randNorm),0), lessThanNeg1, c(max(lessThanNeg1$x),0))

p+ geom_polygon(data = lessThanNeg1, aes(x=x, y=y))
neg1Pos1Seq <- seq(from = -1, to = 1, by = .1)

neg1To1 <- data.frame(x = neg1Pos1Seq, y = dnorm(neg1Pos1Seq))

neg1To1 <- rbind(c(min(neg1To1$x),0), neg1To1, c(max(neg1To1$x),0))

png('graphics/fig17_2.png')
p+geom_polygon(data=neg1To1, aes(x=x,y=y))
dev.off()


##### binomial distribution

rbinom(n=10, size = 10, prob =0.4)
rbinom(n=10, size = 1000, prob =0.4) #결과는 1000번 던져서 0.4의 확률로 성공할 확률이 10번 나옴

binomData <- data.frame(Successes = rbinom(n=10000, size = 10, prob = 0.3))
ggplot(binomData, aes(x=Successes)) + geom_histogram(binwidth = 1)


##### poisson distribution

pois1 <- rpois(n=10000, lambda = 1)
pois2 <- rpois(n=10000, lambda = 2)
pois5 <- rpois(n=10000, lambda = 5)
pois10 <- rpois(n=10000, lambda = 10)
pois20 <- rpois(n=10000, lambda = 20)
pois <- data.frame(Lambda.1 = pois1, Lambda.2 = pois2, Lambda.5=pois5, Lambda.10 = pois10, Lambda.20 = pois20)

library(reshape2)

pois <- melt(data = pois, variable.name= 'Lambda', value.name = 'x')

library(stringr)

pois$Lambda <- as.factor(as.numeric(str_extract(string=pois$Lambda, pattern = '\\d+')))

head(pois)

library(ggplot2)
ggplot(pois, aes(x=x)) + geom_histogram(binwidth = 1) + facet_wrap(~ Lambda) + ggtitle('prob Mass Fn')

ggplot(pois, aes(x=x)) + geom_density(aes(group = Lambda, color = Lambda, fill = Lambda), adjust = 4, alpha = 1/2) + scale_color_discrete() + scale_fill_discrete() + ggtitle('Pr Mass fn')

                                      