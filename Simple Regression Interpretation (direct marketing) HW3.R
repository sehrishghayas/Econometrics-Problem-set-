dt.mktg[location=="Far", mean("amountspent")]
lm3 <- lm(amountspent ~ history, data = dt.mktg)
stargazer(lm3 , type = 'text')
dt.mktg[history=="High", mean (amountspent)]
dt.mktg[history=="Low", mean(amountspent)]
lm.spend1 <- lm( amountspent ~ gender + location + salary + children + catalogs
                 , data = dt.mktg)
stargazer(lm.spend1 , type = 'text')
lm.spend2 <- lm(amountspent ~ ., data = dt.mktg)
stargazer(lm.spend1, lm.spend2 , type = 'text')
new.client <- data.table( gender = "Male"
                          , location = "Close"
                          , salary = 53700
                          , children = 1
                          , catalogs = 12)
my.pred <- predict(lm.spend1, newdata = new.client)
my.pred
my.pred <- predict(lm.spend1, newdata = new.client, interval="prediction", level = .95)
my.pred