library(tidyverse)
# Create data from content module

gdp_spread <- tibble(Country = c("USA", "UK"), "2016" = c(18.71, 2.69), "2017" = c(19.49, 2.66))

gdp_scattered <- tibble(Country = c("USA", "USA", "UK", "UK"), Year = c(2016, 2016, 2016, 2016), Measure = c("GDP", "Population", "GDP", "Population"), Number = c("18.71 trillion USD", "323.1 million people", "2.69 trillion USD", "65.38 million people"))

gdp_combined <- tibble(Country = c("USA", "UK"), Year = c(2016, 2016), "GDP per capita" = c("18710/0.3231", "2690/0.06538"))

frogs_spread <- tibble(Species = c("Aparasphenodon brunoi", "Aparasphenodon brunoi"), Hour = c(09, 11), Minute = c(58,22), Second= c(10,17), Location = c("Brazil", "Honduras"))


