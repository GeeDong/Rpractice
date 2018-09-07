##### data reshape

library(reshape2)
library(scales)
library(stringr)
library(ggplot2)


melt00 <- melt(Aid_00s, id.vars = c("Country.Name",'Program.Name'), variable.name = 'Year', value.name = 'Dollars')


melt00$Year <- as.numeric(str_sub(melt00$Year,3,6))

meltAgg <- aggregate(Dollars ~ Program.Name + Year, data=melt00, sum, na.rm=TRUE)

meltAgg$Program.Name <- str_sub(meltAgg$Program.Name, start = 1 ,end = 10)
ggplot(meltAgg, aes(x=Year, Y= Dollars)) + geom_line(aes(group = Program.Name)) + facet_wrap( ~Program.Name) + scale_x_continuous(breaks = seq(from = 2000, to = 2009, by = 2)) + theme(axis.text.x = element_text(angle=90, vjust = 1, hjust = 0)) + scale_y_continuous(labels = multiple_format(extra=dollar, multiple = 'B'))




