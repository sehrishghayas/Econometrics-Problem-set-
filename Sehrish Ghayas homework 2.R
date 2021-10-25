library(ggplot2)
library(stargazer)
library(data.table)
dt.ceo.salaries <- data.table(data)
nrow(dt.ceo.salaries)
dt.ceo.salaries[, sum(grad)]
nrow(dt.ceo.salaries[grad==1,])
dt.ceo.salaries[, sum(grad)]/nrow(dt.ceo.salaries)
dt.ceo.salaries[, mean(grad)]
dt.ceo.salaries[, mean(salary)]
mean(dt.ceo.salaries[, salary])
dt.ceo.salaries[grad==1, mean(salary)]
dt.ceo.salaries[grad==0, mean(salary)]
dt.ceo.salaries[ , list(n_ceo=.N), by = college]
t.test(dt.ceo.salaries[, salary], mu = 800)
t.test(dt.ceo.salaries[, salary] ~ dt.ceo.salaries[, grad])
dt.ceo.salaries[ , t.test (salary ~ grad)]
dt.ceo.salaries[, list( mean_salary = mean(salary)
                        , sd_salary = sd(salary)
                        , min_salary = min(salary)
                        , max_salary = max(salary)
                        , median_salary = median(salary))]
dt.ceo.salaries[, list( mean_salary = mean(salary)
                        , sd_salary = sd(salary)
                        , min_salary = min(salary)
                        , max_salary = max(salary)), by = list(grad, college)]
stargazer(dt.ceo.salaries, type = "text")
qplot( data = dt.ceo.salaries
       , x = salary
       , geom = "histogram")
qplot( data = dt.ceo.salaries
       , x = age
       , geom = "histogram")
qplot( data = dt.ceo.salaries
       , x = sales
       , y = profits
       , geom = "point")
qplot( data = dt.ceo.salaries
       , x = factor(grad)
       , geom = "bar")
qplot( data = dt.ceo.salaries
       , x = sales
       , y = profits
       , geom = "line")
qplot(data = dt.ceo.salaries
       , x = salary
       , geom = "histogram") + facet_wrap(~ grad)
