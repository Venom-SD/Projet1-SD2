# Connection between RStudio and GitHub 
# Author: Alain Lucas
# Date : 28/06/2025

library(package = "ggplot2")
library(package = "dplyr")

diamonds |> 
  sample_n(size = 300) |> 
  ggplot(mapping = aes(x = carat, 
                       y = price)) +
  geom_point(mapping = aes(color = cut)) +
  labs(title = "Diamonds Dataset",
       subtitle = "Sample of 300 diamonds",
       x = "Carat Weight",
       y = "Price in USD",
       color = "Cut Quality") 

diamonds |> 
  sample_n(size = 300) |>
  group_by(cut) |> 
  summarize(Count = n()) |> 
  ggplot(mapping = aes(x = cut,
                       y = Count)) +
  geom_bar(stat = 'identity',
           color = "black",
           mapping = aes(fill = cut),
           show.legend = FALSE) +
  labs(title = "Diamonds Dataset",
       subtitle = "Sample of 300 diamonds",
       x = "Quality",
       y = "Count") 


