library(ggplot2)
library(here)
library(readr)

setosa_subset = read_csv(here('./Output/Setosa_Subset_Data.csv'))
new_data = read_csv(here('./Output/New_Data_For_Prediction.csv'))


# make and save a simple plot
simple_fig = ggplot(data = setosa_subset) +
  geom_point(aes(x = Sepal.Length, y = Petal.Width)) +
  labs(x = "sepal length", y = "petal width") +
  theme_bw()
ggsave(here('./Figs/Simple_Iris_Fig.png'), simple_fig)


# plot prediction
prediction_plot = ggplot(data = new_data) +
  geom_line(aes(x = Petal.Length, y = prediction),
            size = 2, colour = 'red') +
  labs(x = "petal length", y = "sepal length prediction") +
  theme_bw()
ggsave(here('./Figs/Prediction_Plot_Simple.png'), prediction_plot)
