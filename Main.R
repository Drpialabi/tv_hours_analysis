library(tidyverse)
library(here)

tv_hours_table <- gss_cat %>% 
  filter(age >= 40) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE))

write.csv(tv_hours_table, here("TV_hours_by_Marital.csv"))
