library(tidyverse)

data(iris)

petal_mean=mean(iris$Petal.Length)

p_histogram=ggplot(iris,aes(x=Petal.Length))+
  geom_histogram()

if(F) 
  test_file("tests/testthat/test.R","summary")

