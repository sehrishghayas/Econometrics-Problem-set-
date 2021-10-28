dt.mktg <- data.table(read.csv("DirectMarketing"))
dt.mktg <- data.table(read.csv("DirectMarketing.csv"))
library(dt.table(data))
dt.mktg<-DirectMarketing
dt.mktg <- data.table(read.csv("DirectMarketing.csv"))
dt.mktg <- setnames(dt.mktg, tolower(names(dt.mktg)))
nrow(dt.mktg)
colnames(dt.mktg)
head(dt.mktg)
summary(dt.mktg)
stargazer(dt.mktg, type = "text")
qplot(data = dt.mktg
       , x = age
       , geom = 'bar') + theme_bw() + xlim("Young","Middle","Old")
qplot( data = dt.mktg
       , x = gender
       , geom = 'bar') + theme_bw()
qplot( data = dt.mktg
       , x = ownhome
       , geom = 'bar') + theme_bw()
qplot( data = dt.mktg
       , x = married
       , geom = 'bar') + theme_bw()
qplot( data = dt.mktg
       , x = location
       , geom = 'bar') + theme_bw()
qplot( data = dt.mktg
       , x = factor (children)
       , geom = 'bar') + theme_bw()
qplot( data = dt.mktg
       , x = history
       , geom = 'bar') + theme_bw()
qplot( data = dt.mktg
       , x = factor(catalogs)
       , geom = 'bar') + theme_bw()
qplot( data = dt.mktg
       , x = salary
       , geom = 'histogram') + theme_bw()
qplot( data = dt.mktg
       , x = salary
       , geom = 'density') + theme_bw()
qplot( data = dt.mktg
       , x = amountspent
       , geom = 'histogram') + theme_bw()
qplot( data = dt.mktg
       , x = amountspent
       , geom = 'density') + theme_bw()

qplot( data = dt.mktg
       , x = factor(gender)
       , y = amountspent
       , geom = 'boxplot') + theme_bw()
qplot( data = dt.mktg
       , x = factor(ownhome)
       , y = amountspent
       , geom ='boxplot') + theme_bw()
qplot( data = dt.mktg
       , x = factor(married)
       , y = amountspent
       , geom = 'boxplot') + theme_bw()
qplot( data = dt.mktg
       , x = factor(location)
       , y = amountspent
       , geom = 'boxplot') + theme_bw()
qplot( data = dt.mktg
       , x = factor(children)
       , y = amountspent
       , geom ='boxplot') + theme_bw()
qplot( data = dt.mktg
       , x = factor(history)
       , y = amountspent
       , geom ='boxplot') + theme_bw() + xlim("Low", "Medium", "High", NA)
qplot( data = dt.mktg
       , x = factor(catalogs)
       , y = amountspent
       , geom ='boxplot') + theme_bw()
lm1 <- lm(amountspent ~ salary, data = dt.mktg)
stargazer(lm1, type = 'text')