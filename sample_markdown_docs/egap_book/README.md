# EGAP Learning Days Book and Guide Repository

![Build and Deploy](https://github.com/egap/learningdays-guide/workflows/Build%20and%20Deploy/badge.svg)

This is the repository for the online EGAP Learning Days book which includes a materials to help researchers learn how to design and analyze data from randomized field experiments.

## Contributing

We would love for anyone to improve this work. Please feel free to post ideas in the [Github Issues](https://github.com/egap/learningdays-guide/issues). Also feel free to [Fork](https://guides.github.com/activities/forking/) and modify and make a pull request. If you have a message to send, the best way is to use the [Issues](https://github.com/egap/learningdays-guide/issues). You can also send an email to <admin@egap.org>.

## Tools

Here we describe how we develop this book and provide some guidance for people who want to collaborate with us in writing etc.

### Markdown

We write the text for the modules in Markdown format. The slides are in R+Markdown format.

If you want help making tables, you can try the following online tool <https://thisdavej.com/copy-table-in-excel-and-paste-as-a-markdown-table/>.

### R packages

We are also using the [renv](https://rstudio.github.io/renv/index.html) package to keep our libraries portable. So, before you start collaborating but after you clone this repository you will want to do the following:

```
install.packages("renv")
```

To install all of the packages we use in this guide, then, you should start R in the Guide/ directory and do:

```
renv::restore()
```

That command will read the `renv.lock` file 

From then on, if you start R from within the Guide directory, you should be only using R packages installed locally and they need not clutter your whole system just to work on this book project. For example you should see something like this at the top of your R session console.

```
* Project '~/Documents/PROJECTS/learningdays-guide/Guide' loaded. [renv 0.11.0]
```

We use the `bookdown` package. So you will need to `install.packages("bookdown")` before loading the `learningdays-guide.Rproj` file in RStudio.

We are also using `renv` from within the Guides/Resources/Slides directory. See also [renv for collaboration using github](https://rstudio.github.io/renv/articles/collaborating.html).

###  To Deploy the Guide Online

The book will automatically be built and deployed online for each push to the repository using github actions.

#### To build and deploy by hand

Before using github actions we used the `_build.sh` and `_deploy.sh` bash shell scripts for building and deployment.

**To deploy by hand**

If you have access to this github repository and a Mac/OS X machine, you can send a compiled version to github to be hosted via [Github Pages](https://pages.github.com) using the following command at the command line (using the [Terminal](https://macpaw.com/how-to/use-terminal-on-mac)). You also need to have connected your machine with Github via an ssh key.

```
cd Guide
 ./_deploy.sh 
 ```
  
## License

We are happy for others to use this work as long as EGAP is attributed. See the following license for the precise terms.


<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
