# Playing with advanced git

## Slides are [here](https://emlab-ucsb.github.io/adv_git/slides.html#1)

Make sure that you `fork` the repo, and then clone the one at `your_username/git_adv` int your computer. We want to make sure there are no user restrictions.

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
- `git merge` to bring changes from one branch into another
- `git tag -a VERSION -m "TAG MESSAGE"` to tag a commit
- `git push`

## How to prepare

### R

```
install.packages("shiny")
install.packages("testthat")
install.packages("shinytest")
```
### Your system

Not sure this will work on everyone's computer, but try the following.

1) Copy and paste the following code into your prefered terminal:

```
git config --global alias.logline "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

2) Now this:

```
git config --global alias.logone "log --pretty=oneline"
```

This will create aliases so that we can call very long commands just using `git logline` and `git logone`.

3) In your computer, open any Rproject that has a repo. Go to the RStudio terminal (not the Console!) and type:

```
git logline
```

It should show a compressed history of all commit messages

4) Now type:

```
git logone
```

It should show similar info

Let me know if something is not working.










