# suicides by cops in different states
# data from Times of India
states <- c("Andra Pradesh", "Karnataka", "Tamil Nadu", "Kerala")
year <- c(2012,2013,2014)
year_2012 <- c(10,17,58,8)
year_2013 <- c(11,15,31,15)
year_2014 <- c(3,7,27,9)
total <- c(24,39,116,32)
cops_suicides <- data.frame(states = states,year_2012, year_2013,year_2014,total)
cops_suicides1 <- cops_suicides[,-5]
library(reshape2)
melt1<- melt(cops_suicides1, "states")
p <- ggplot(cops_suicides, aes(states,total)) + geom_bar(stat = "identity")
p <- ggplot(melt1, aes(states,value, fill=variable)) + geom_bar(stat = "identity", position =  "dodge")
p+ labs(title = "cops suicide per states")+ylab("Number of suicides")
