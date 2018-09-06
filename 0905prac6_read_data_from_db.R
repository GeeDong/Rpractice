library(RSQLite) #install.packages('RSQLite')
drv <- dbDriver('SQLite')
class(drv)

con <-dbConnect(drv, 'data/diamonds.db')
class(con)

dbListTables(con)

dbListFields(con, name = 'diamonds')
dbListFields(con, name = 'DiamondColors')

diamondsTable <- dbGetQuery(con, 'SELECT * FROM diamonds', stringAsFactors = FALSE)

colorTable <- dbGetQuery(con, 'SELECT * FROM DiamondColors', stringAsFactors = FALSE)

longQuery <- 'SELECT * FROM diamonds, DiamondColors WHERE diamonds.color = DiamondColors.Color'
diamondsJoin<- dbGetQuery(con, longQuery, stringAsFactors = FALSE)

head(diamondsTable)
head(colorTable)
head(diamondsJoin)