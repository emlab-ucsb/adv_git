# Repository


## Repository structure 

```
-- adv.Rproj
-- basic_app
   |__app.R
   |__tests
-- DESCRIPTION
-- man
   |__gal2lit.Rd
-- NAMESPACE
-- R
   |__gal2lit.R
-- README.md
-- tests
   |__testthat
   |__testthat.R
```

As seen in the `repository structure` section above, this repo contains an R package and a ShinyApp (`basic_app`). Each has its own set of tests. The tests for the package are under `tests`, and the tests for the app are under `basic_app/tests`.

For the package, we are using a simple (`testthat`)[https://testthat.r-lib.org/index.html] workflow. For the ShinyApp, we are using the (`shinytest`)[https://rstudio.github.io/shinytest/] package (which is inspired in and uses `testthat`).

## Using `git` to debug a repository

There are two files that have bugs. One is in the app, the other one is in a function.

--------- 

<a href="https://orcid.org/0000-0003-1245-589X" target="orcid.widget" rel="noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">orcid.org/0000-0003-1245-589X</a>
