This is the repository for the EGAP Learning Days Guide. Currently in R Markdown and **guidedown** (https://github.com/rstudio/guidedown).

You can find the preview of this example at <https://egap.github.io/learningdays-guide/> 


# To build the guide

You will require the `bookdown` R package. Then you can click `build book` in
the `Build` menu of Rstudio or type `render_book()` at the R command line
within the `Guide` directory.

# To update the web preview:

First, commit and push any changes to the _guide subdirectory within the Book
directory. (That is where `render_bookdown()` creates the html files from the
Rmd files).

Second, move to the root directory (i.e. `cd ..` on a Unix machine at the
command line).

Third, the following steps work on Unix based machines:

```
rm -rf guide-output
git clone -b gh-pages git@github.com:egap/learningdays-guide.git guide-output
cd guide-output
cp -r ../Guide/_guide/* ./
git add --all *
git commit -m"Update the guide" || true
git push -q origin gh-pages
git checkout master
```

