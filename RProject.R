library(tidyverse)
setwd("~/Documents/R-Home/R-Directory")

spotify <- read_csv(file="global_june_2020.csv")

# filtering main csv by Top 10, to reduce size
top10Songs <- filter(spotify, Position <= 10)

view(spotify)
view(multipleSongs)

# generating line plot charting artist's position over time
ggplot(top10Songs, aes(x = Date, y = Position, colour = `Artist`)) + 
  geom_line()




