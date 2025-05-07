# set up workspace
# install.packages("irr")
# install.packages("krippendorffsalpha")
library(irr)
library(tidyverse)
library(krippendorffsalpha)

# set up data for fleiss kappa
# 2 level rating (0=inappropriate, 1=appropriate)
appropriateness_f <- as.table(rbind(
  c(0, 0, 0, 0, 0, 0), 
  c(0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0),
  c(1, 0, 0, 1, 1, 1),
  c(1, 0, 1, 1, 1, 1),
  c(0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0),
  c(1, 1, 1, 1, 1, 1)
))

dimnames(appropriateness_f) <- list(
  Case = paste0("Case", 1:10), 
  Rater = paste0("Rater", 1:6)
)

print(appropriateness_f)

# computing fleiss kappa
appropriateness_fkappa <- kappam.fleiss(appropriateness_f)
appropriateness_fkappa

# set up data for krippendorff kappa
# 3 levels (0=inappropriate, 1=suboptimal, 2=appropriate)
appropriateness_k <- as.table(rbind(
  c(0, 1, 1, 1, 0, 1),
  c(0, 1, 0, 1, 0, 1),
  c(1, 0, 0, 1, 1, 1),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0),
  c(2, 1, 1, 2, 2, 2),
  c(2, 1, 2, 2, 2, 2),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0),
  c(2, 2, 2, 2, 2, 2)
))

dimnames(appropriateness_k) <- list(
  Case = paste0("Case", 1:10), 
  Rater = paste0("Rater", 1:6)
)

print(appropriateness_k)

# computing krippendorff alpha
appropriateness_kkappa <- kripp.alpha(appropriateness_k)

appropriateness_kkappa
