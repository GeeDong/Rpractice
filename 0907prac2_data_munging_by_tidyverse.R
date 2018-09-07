### tidyverse

library(dplyr)
library(tibble)
library(tidyverse)

sportleague <- tibble(sport = c('Hockey', 'Baseball', 'Football'), league = c('NHL', 'MLB', 'NFL'))

trophy <- tibble(trophy = c('SC','CT','VLT'))

tr1 <- bind_cols(sportleague, trophy)
tr2 <- tribble(~sport, ~league, ~trophy, 'Basketball', 'NBA', 'LCT', 'Golf', 'PGA', 'WT')

trs <- bind_rows(tr1, tr2)
trs

##join by dplyr

library(readr)
colorsURL <- 'https://www.jaredlander.com/data/DiamondColors.csv'
diamondColors <- read_csv(colorsURL)
diamondColors

data(diamonds, package='ggplot2')
unique(diamonds$color)

library(dplyr)
left_join(diamonds, diamondColors, by = c('color'='Color')) %>% select(carat, color, price, Description)

left_join(diamonds, diamondColors, by = c('color'='Color')) %>% distinct(color, Description)

right_join(diamonds, diamondColors, by = c('color'='Color')) %>% nrow
diamonds %>% nrow

inner_join(diamonds, diamondColors, by = c('color'='Color'))

full_join(diamonds, diamondColors, by = c('color'='Color'))

semi_join(diamondColors, diamonds, by = c('Color' = 'color'))

anti_join(diamondColors, diamonds, by = c('Color' = 'color'))

emotion <- read_tsv('https://www.jaredlander.com/data/reaction.txt')
library(tidyr)
emotion
emotion %>% gather(key = Type, value = Measurement, Age, BMI, React, Regulate)
emotion %>% gather(key = Type, value = Measurement, -ID, -Test, -Gender)
