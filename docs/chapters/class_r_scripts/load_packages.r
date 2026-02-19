# The following code loads the libraries into your R session.

# Package names
packages <- c(
  "ggplot2",
  "seewave",
  "DHARMa",
  "tuneR",
  "ggeffects",
  "broom",
  "GGally",
  "MuMIn",
  "insight",
  "glmmTMB",
  "rio",
  "Matrix",
  "dplyr",
  "tidyr",
  "reshape2",
  "lubridate",
  "psych",
  "stringr",
  "tidyverse",
  "fields",
  "mgcv",
  "MASS",
  "readr")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))
