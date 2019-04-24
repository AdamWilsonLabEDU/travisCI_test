library(testthat)
source("function.R")
# https://uoftcoders.github.io/studyGroup/lessons/git/ci-github/lesson/
expect_equal(add_nums(2, 2), 4)
actual_size <- nrow(random_half_split(iris))
expect_equal(actual_size, 75)


