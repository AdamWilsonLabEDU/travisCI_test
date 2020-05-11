library(testthat)
library(proto)
library(vdiffr)
source("../../Assignment01.R")

# p=ggplot(iris,aes(x=Petal.Length))+
#   geom_histogram()

# p2=ggplot(iris,aes(x=Petal.Length))+
#   geom_point()
#
# saveRDS(p1,file="junk.rda")
# test_that("ggplot is correct", {
#   expect_known_(p2, file = "junk.rda")
# })
#
#
#
#vdiffr::expect_doppelganger("ggplot2 histogram", p_histogram)
#

context("Mean")

test_that("petal_mean is correct",{
  expect_true(exists("petal_mean"))
  expect_equal(petal_mean, 3.758)
})

context("Histograms")
test_that("Plot data is correct",{
  expect_equal(p_histogram$data, iris)
})

test_that("Plot labels are correct",{
  expect_equal(p_histogram$labels$x, "Petal.Length")
})


test_that("Plot layers match expectations",{
#  expect_is(p_histogram$layers[[1]], "proto")
#  expect_identical(p_histogram$layers[[1]]$geom$objname, "bar")
  expect_identical(class(p_histogram$layers[[1]]$stat), c("StatBin","Stat","ggproto","gg"))
})

test_that("Scale is labelled 'Proportion'",{
  expect_identical(p_histogram$labels$y, "count")
})

test_that("Scale range is NULL",{
  expect_null(p_histogram$scales$get_scales())
})



