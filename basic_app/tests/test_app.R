library(here)
library(shinytest)

app <- ShinyDriver$new(here("basic_app"))
app$snapshotInit("test_app")

app$snapshot()
app$setInputs(gallons = 200)
app$setInputs(bins = 25)
app$snapshot()
