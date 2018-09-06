x <- 10:1
y <- -4:5
q <- c('Hotkey','football','baseball', 'culing','rugby', 'lacrosse', 'basketball', 'tennis', 'cricket', 'soccer')

theDF <- data.frame(x,y,q)

theDF <- data.frame(First = x, Second = y, sport = q)

nrow(theDF)
ncol(theDF)
dim(theDF)

names(theDF)[3]

rownames(theDF) <- c('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten')

rownames(theDF)

theDF

head(theDF, 3)

theDF$sport

theDF[3, 2:3]

theDF[c(3,5), 2:3]

theDF[,3]
theDF[1,]

theDF[,c('First','sport')]

#아래 두개는 같음 
theDF[,'sport']
theDF[['sport']]

#아래 두개는 같음
theDF['sport']
theDF[,'sport', drop=FALSE]