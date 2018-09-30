# blirp

blirp is a package developed by and for the students in the Barrett Lab at McGill University. The goal of this package is to share some of the scripts that students are putting together and share them so that the effort spent developing the scripts is shared! 

## Creating packages in R 
[This link](https://r-mageddon.netlify.com/post/writing-an-r-package-from-scratch/) will guide you through the development of an R package. 

## Installation from GitHub

The easiest way to install blirp is to install it directly from GitHub, using the `devtools` package. If you don't have the `devtools` package, you'll need to install it first:

```r
install.packages("devtools")
```

Then, you can intall blirp:

```r
library(devtools)
install_github("barrettlabecoevogeno/blirp") 
library(blirp)
```

## Installation from source

If you already have a copy of all the blirp files (say, if you downloaded them from GitHub yourself), you can install blirp from those source files:

```r
install.packages("~/path/to/blirp/", repos = NULL, type = "source")
library(blirp)
```

## No installation from CRAN

For now, blirp isn't on CRAN. 

