library(XML) # install.packages('XML')
theURL <- 'https://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/'
#bowlPool <- readHTMLTable(theURL, which=1, header=F, stringsAsFactors=F)
#bowlPool
library(rvest) #install.packages('rvest')
read_html(theURL) %>% html_table()
