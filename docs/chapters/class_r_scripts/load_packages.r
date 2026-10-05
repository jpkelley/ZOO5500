# The following code installs any missing packages (and their dependencies)
# and then loads the packages into the current R session.

# Package names
packages <- c(
  "ggplot2",
  "tidygam",
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
  "tidyr",
  "reshape2",
  "lubridate",
  "psych",
  "stringr",
  "fields",
  "mgcv",
  "MASS",
  "readr",
  "dplyr",
  "tidyverse",
  "usdm"
)

# Identify packages that are not installed
missing_packages <- packages[
  !vapply(packages, requireNamespace, logical(1), quietly = TRUE)
]

# Install missing packages AND their dependencies
if (length(missing_packages) > 0) {
  install.packages(
    missing_packages,
    dependencies = TRUE,
    repos = "https://cloud.r-project.org"
  )
}

# Load packages
invisible(
  lapply(
    packages,
    library,
    character.only = TRUE
  )
)