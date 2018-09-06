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
