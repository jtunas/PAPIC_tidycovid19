#remotes::install_github("joachim-gassen/tidycovid19")
library(tidycovid19)
library(dplyr)
library(foreach)

#' @param wbank_vars Specify the World Bank data items that you want to retrieve.
#' @param wbank_labels Give somewhat more informative World Bank variable names
#'     for the output data frame. Has to match the length of \code{wbank_vars}
#'     and needs to contain valid variable names.
#' @param search_term Google Trends serch term. Defaults to "coronavirus".
#' @param silent Whether you want the function to send some status messages to
#'     the console. Might be informative as downloading will take some time
#'     and thus defaults to \code{TRUE}.
#' @defaults     
#'     wbank_vars = c("SP.POP.TOTL", "AG.LND.TOTL.K2","EN.POP.DNST", "EN.URB.LCTY","SP.DYN.LE00.IN", "NY.GDP.PCAP.KD"),
#'     wbank_labels = c("population", "land_area_skm","pop_density", "pop_largest_city", "life_expectancy", "gdp_capita"),
#'     search_term = "coronavirus",

all_countries <- download_merged_data(cached = TRUE, search_term = c('coronavirus','covid19','covid'))

write.csv(all_countries, 'E:/PAPIC/tidycovid19 wrapper/merged_data_tidyverse19.csv', row.names = FALSE)
write.table(Sys.time(),"E:/PAPIC/tidycovid19 wrapper/lastVersion_data_tidyverse19.txt", row.names = FALSE)

