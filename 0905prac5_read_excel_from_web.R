#######Excel
#download.file(url='http://www.jaredlander.com/data/ExcelExample.xlsx', destfile='data/ExcelExample.xlsx', mode = 'wb')

method='curl'
mode = 'wb'

library(readxl) # install.packages('readxl')
excel_sheets('data/ExcelExample.xlsx')

tomatoXL <- read_excel('data/ExcelExample.xlsx')
head(tomatoXL, 4)

wineXL1 <- read_excel('data/ExcelExample.xlsx',sheet = 2)
head(wineXL1, 4)

wineXL2 <- read_excel('data/ExcelExample.xlsx',sheet = 'Wine')
head(wineXL2, 4)