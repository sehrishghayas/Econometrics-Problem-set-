...{R}

library(data.table)
library(ggplot2)
require(stargazer)
dt.affairs <- data.table(data)
stargazer(dt.affairs, type = "text")
dt.affairs[, religious:= relig>3]
dt.affairs[, .N, by = religious]
dt.affairs[, t.test(affair ~ religious)]
dt.affairs[, t.test(naffairs ~ religious)]
dt.affairs[, t.test(affair ~ religious, alternative = c("greater"))]
dt.affairs[, t.test(naffairs ~ religious, alternative = c("greater"))]

...