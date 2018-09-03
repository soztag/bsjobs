# dependencies ====
library(knitr)
library(rmarkdown)

# knitr setup ====
knitr::opts_chunk$set(
  tidy = TRUE,   # tidy formats code nicely in echo
  cache = TRUE,
  echo = FALSE,
  message = FALSE
)
options(digits = 2)  # display only 2 digits in knitr output
options(scipen = 999)
