library(magrittr)
library(dplyr)
data(diamonds, package = "ggplot2")

#### using select 

select(diamonds, carat, price)

diamonds %>% select(carat, price)
diamonds %>% select(c(carat, price))
diamonds %>% select(1,7)
diamonds %>% select(starts_with('c'))
diamonds %>% select(ends_with('e'))
diamonds %>% select(contains('l'))
diamonds %>% select(matches('r.+t'))
diamonds %>% select (-carat, -cut)


#### fileter

diamonds %>% filter(cut=='Ideal')
diamonds %>% filter(cut=='Ideal', color=='E') # and 연산
diamonds %>% filter(cut=='Ideal' | cut=='Good') # or 연산 
diamonds %>% filter(cut %in% c('Ideal', 'Good'))
diamonds %>% filter(price >= 1000)


#### slice

diamonds %>% slice(c(1:5, 9, 20:40))


#### mutate

diamonds %>% mutate(price/carat)
diamonds %>% select(carat,price) %>% mutate(Ratio=price/carat)
diamonds %>% select(carat,price) %>% mutate(Ratio=price/carat, Double = Ratio*2)

#### summarize

diamonds %>% summarize(mean(price))
diamonds %>% summarize(avg = mean(price), med = median(price)) ## 이름 부여

#### group by

diamonds %>% group_by(cut) %>% summarize(mean(price))
diamonds %>% group_by(cut, color) %>% summarize(avg = mean(price))

#### arrange

diamonds %>% group_by(cut) %>% summarize(avg=mean(price)) %>% arrange(avg) #ascending
diamonds %>% group_by(cut, color) %>% summarize (avgP=mean(price), avgC = mean(carat)) %>% arrange(desc(color),avgP) #하위 개념에 대해 arrange 
