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