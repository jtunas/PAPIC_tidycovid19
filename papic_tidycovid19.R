#remotes::install_github("joachim-gassen/tidycovid19")
library(tidycovid19)
library(dplyr)
library(foreach)

all_countries <- download_merged_data(cached = TRUE)

write.csv(all_countries, 'E:/PAPIC/tidycovid19 wrapper/merged_data_tidyverse19.csv')
write.table(Sys.time(),"E:/PAPIC/tidycovid19 wrapper/lastVersion_data_tidyverse19.txt")
