
pcks <- c('devtools', 'roxygen2', 'testthat', 'knitr', 'usethis')

landscape_setup <- function(pkg){
  new_pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new_pkg))
    install.packages(new_pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

landscape_setup(pcks)


# check that you have everything installed and working by running the following code:
has_devel()

# devtools::create('escn')

# This functions will populate the correct fields with some of the most common licenses
# usethis::use_cc0_license('Simon Kønig')

devtools::load_all()

# This function generates the documentation (.Rd) files and then stores them in the man subdirectory.
devtools::document()

#  install new package and check out the new documentation
devtools::install()













# Adds a dummy .R file that will prompt roxygen to generate basic package-level documentation.
usethis::use_package_doc()

# updating documentation
devtools::document()


