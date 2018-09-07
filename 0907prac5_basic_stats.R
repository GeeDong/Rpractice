#### basic stats

x <- sample(x=1:100, size = 100, replace = TRUE)

mean(x) # na.rm = TRUE
var(x)
sd(x)

min(x)
max(x)
median(x)

summary(x)

quantile(x, probs=c(0.25, 0.75))

#### correlation, covariance

library(ggplot2)
head(economics)

cor(economics$pce, economics$psavert)
cor(economics[,c(2,4:6)])

GGally::ggpairs(economics[,c(2,4:6)]) + ggplot2::theme(axis.text=ggplot2::element_text(size=2))

cov(economics$pce, economics$psavert)
cov(economics[,c(2,4:6)])

data(tips, package='reshape2')

#### t-test
t.test(tips$tip, alternative = 'two.sided', mu = 2.5)
t.test(tips$tip, alternative = 'greater', mu = 2.5)

## 2-sample t-test

t.test(tip ~ sex, data = tips, var.equal= TRUE)

## paired t-test

data(father.son, package = 'UsingR')
t.test(father.son$fheight, father.son$sheight, paired = TRUE)
