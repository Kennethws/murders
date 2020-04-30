library(tidyverse)
murders <- read_csv('data/murders.csv')
murders <- murders %>% 
  mutate(region = factor(region), rate = total / population * 10^5)
save(murders, file = 'rda/murders.rda')
# Saving .RData could be dangerous because your collaborators may not have the 
# exact variables you have in your R environment


