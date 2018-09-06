#### cbind rbind

sport <- c('hockey', 'baseball', 'football')
league <- c('NHL', 'MLB', 'NFL')
trophy <- c('Stanley Cup', "Comissioner's Trophy", 'Vince Lombardi Trophy')
bind <- cbind(sport, league, trophy)
bind2 <- data.frame(sport = c('Basketball','golf'), league=c('NBA','PGA'), trophy = c('Larry Trophy', 'Wanamaker trophy'), stringsAsFactors=FALSE)

binds <- rbind(bind, bind2)
binds


#### join

library(stringr)

theFiles <- dir('data/', pattern='\\.csv')

for(a in theFiles) {
  nameToUse <-str_sub(string =a , start =12, end=18)
  temp <- read.table(file = file.path('data',a), header=TRUE, sep = ',', stringsAsFactors = FALSE)
  assign(x = nameToUse, value = temp)
}


#### merge

head(Aid_90s, 2)
head(Aid_00s, 2)

Aid90s00s <- merge(x = Aid_90s, y= Aid_00s, by.x = c('Country.Name', 'Program.Name'), by.y = c('Country.Name', 'Program.Name'))

head(Aid90s00s)
