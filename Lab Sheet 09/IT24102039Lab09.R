setwd("C:\\Users\\ASUS\\Desktop\\Lab 08")
data <- rnorm(25, mean = 45, sd = 2)
data

result <- t.test(data, mu = 46, alternative = "less")


result

