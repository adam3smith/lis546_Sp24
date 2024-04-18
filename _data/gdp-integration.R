# Load libraries
library(dplyr)
library(tibble)
library(jsonlite)

# The data we will use contains information on GDP in local currency
GDP2018 <- tibble(Country = c("UK", "USA", "France"),
                      Currency = c("Pound", "Dollar", "Euro"),
                      GDPTrillions = c(2.1, 20.58, 2.78))

#To view the data we have just created follow the next step
View(GDP2018)

# Now we will create a second data set that contains dollar exchange rates
DollarValue2018 <- tibble(Currency = c("Euro", "Pound", "Yen", "Dollar"),
                              InDollars = c(1.104, 1.256, .00926, 1))
View(DollarValue2018)

# Join datasets
GDPandExchange <- full_join(GDP2018, DollarValue2018)

View(GDPandExchange)
GDP2019 <- tibble(Country = c("UK", "USA", "France"),
                  GDPTrillions = c(2.2, 21.4, 2.73),
                  Currency = c("Pound", "Dollar", "Euro"))

GDP2018 <- GDP2018 |> add_column(Year = 2018)
GDP2019 <- GDP2019 |> add_column(Year = 2019)

GDP <- rbind(GDP2018, GDP2019)
View(GDP)

inner_join(GDP, DollarValue2018)

toJSON(GDP2018)
toJSON(GDP2019)
