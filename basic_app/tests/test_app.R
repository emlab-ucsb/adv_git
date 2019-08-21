app <- ShinyDriver$new("../")
app$snapshotInit("test_app")

app$snapshot()
app$setInputs(bins = 25)
app$setInputs(gallons = 200)
app$snapshot()
