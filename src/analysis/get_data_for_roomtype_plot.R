# --- Load Libraries --- #
library(dplyr)
library(haven)

# --- Load Data --- #
all_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# --- Data for Plot 3 --- #

roomtype_price <- all_data %>%
  group_by(room_type, regulation) %>%
  summarise(price = mean(price))

write.csv(roomtype_price, "../../gen/analysis/input/data_for_roomtype_plot.csv", row.names = FALSE)
