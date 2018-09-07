###paste

paste('Hello', 'Jared', 'and others')

paste('Hello', 'Jared', 'and others', sep = '/')

paste(c('Hello','hey','howdy'),c('Jared','bob','david'))

paste('hello',c('jared','bob','david'),c('goodbye','seeya'))

vectorOfText <- c('hello','everyone','out there','.')

paste(vectorOfText, collapse = ' ')

###sprintf

waitTime <- 25

sprintf('Hello %s your party of %s will be seated in %s minutes', c('jared','bob'),c('eight',16,'four',10),waitTime)


#####stringr
library(XML)

theURL <- "http://www.loc.gov/rr/print/list/057_chron.html"
presidents <- readHTMLTable(theURL, which=3, as.data.frame=TRUE, skip.rows=1, header = TRUE, stringAsFactors = FALSE)

head(presidents)

library(stringr)

yearList <- str_split(string = presidents$YEAR, patter ='-')
yearMat <- data.frame(Reduce(rbind,yearList))

names(yearMat) <-c('start','stop')
presidents <- cbind(presidents, yearMat)
presidents$start <- as.numeric(as.character(presidents$start))
presidents$stop <- as.numeric(as.character(presidents$stop))

str_sub(string=presidents$PRESIDENT, start =1 , end = 3)

presidents[str_sub(string = presidents$start, start = 4, end = 4) == 1, c('YEAR','PRESIDENT', 'start', 'stop')]


#### regular expression (거의 안씀)

johnPos <- str_detect(string = presidents$PRESIDENT, pattern = 'John')
presidents[johnPos,c('YEAR','PRESIDENT','start','stop')]

badSearch <- str_detect(presidents$PRESIDENT, 'john')
goodSearch <- str_detect(presidents$PRESIDENT, fixed(pattern='john',ignore_case = TRUE))
head(goodSearch)
                         