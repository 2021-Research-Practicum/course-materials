This is a directory for slide presentations.

To build all slides, for now, do:

```
make all
```

Or if you want to force rebuild them, and do not want to do, `make -f all` you can try:

```
for * in *.Rmd; do Rscript -e "library(rmarkdown);render('$X')"; done

```
