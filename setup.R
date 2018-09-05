# dependencies ====
library(knitr)
library(rmarkdown)
library(printr)
library(ggplot2)
library(tibble)
library(dplyr)
library(magrittr)
library(tidytext)

# knitr setup ====
knitr::opts_chunk$set(
  tidy = TRUE,   # tidy formats code nicely in echo
  cache = TRUE,
  echo = FALSE,
  message = FALSE,
  out.width = '100%'
)
options(digits = 2)  # display only 2 digits in knitr output
options(scipen = 999)
