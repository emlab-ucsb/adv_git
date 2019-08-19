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

For the package, we are using a simple [`testthat`](https://testthat.r-lib.org/index.html) workflow. For the ShinyApp, we are using the [`shinytest`](https://rstudio.github.io/shinytest/) package (which is inspired in and uses `testthat`).

## Using `git` to debug code in your repo

Commands that we'll use:

- `git status` tells the status of our repository
- `git log --pretty=oneline` shows the commit history (nicely)
- `git bisect [start, good, bad]` start bisecting, and tag each commit as good or bad (based on test runs)
- `git bisect reset` once we've identified the "breaking point", come back to the present
- `git branch` to inspect existing branches
- `git ckeckout BRANCH_NAME` switch branches
- `git checkout -b NEW_BRANCH_NAME` to create a new branch and switch into it
- `git reset HASH` to rewrite a file
- `git commit` to commit changes
- `git merge` to update changes
- `git tag -a VERSION -m "TAG MESSAGE"` to tag a commit
- `git push`



There are two files that have bugs. One is in the app, the other one is in a function.
