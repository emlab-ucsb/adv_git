# test_gal2lit
library(here)
library(testthat)
source(here("R", "gal2lit.R"))

context("gal2lit converts correctly")
test_that("gal2lit", {
  expect_equal(gal2lit(1), 3.785)
  expect_equal(gal2lit(1/3.785), 1)
})

context("gal2lit handles input types")
test_that("gal2lit",{
  expect_error(gal2lit(NA))
  expect_error(gal2lit(NULL))
  expect_error(gal2lit("1"))
})