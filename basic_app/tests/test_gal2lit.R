# test_gal2lit
library(here)
library(testthat)
source(here("basic_app", "functions", "gal2lit.R"))

context("Testing that gal2lit converts correctly")
test_that("gal2lit", {
  expect_equal(gal2lit(1), 3.785)
})