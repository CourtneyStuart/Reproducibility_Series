library(ggplot2)
library(readr)

setosa_subset = read_csv('./Output/Setosa_Subset_Data.csv')

# further subset data
setosa_subset = setosa_subset[which(setosa_subset$Petal.Width > 0.2), ]


# run a simple model
hist(setosa_subset$Sepal.Length)

setosa_model = glm(Sepal.Length ~ Petal.Width*Petal.Length, 
                   data = setosa_subset)

summary(setosa_model)
saveRDS(setosa_model, './Output/Setosa_Model_Object.rds')

# read in rds and plot results
setosa_model = readRDS('./Output/Setosa_Model_Object.rds')

# model prediction
new_data = data.frame(Petal.Length = seq(1.3, 1.9, 0.1),
                      Petal.Width = seq(0.3, 0.9, 0.1))
new_data$prediction = predict(setosa_model, new_data, type = "response")

# write out data
write_csv(new_data, './Output/New_Data_For_Prediction.csv')
