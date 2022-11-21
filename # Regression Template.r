# Regression Template
# Polynomial Regression
# Making my first non Linear Regression model
# Importing the dataset

library("readxl")
dataset = read_excel("C:/Users/kaust/Downloads/Position_Salaries.xlsx")


dataset = dataset[2:3]
# Splitting the dataset into the training set and test set
# install.packages('caTools')
#library(caTools)
# set.seed(123)
# split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)




# Fitting Regression Model to the dataset

# Create our Regressor here


y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the Regression model results

ggplot() + 
  geom_point(aes(x = dataset$Level , y = dataset$Salary ),
             colour = 'red') +
  geom_line(aes(x = dataset$Level , y = predict(regressor, newdata = dataset) ),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Regression Model)') +
  xlab('Level') +
  ylab('Salary')



# Predicting a new result with Polynomial Regression



# (for higher resolution and smoother curves)
# Visualising the Regression model results

x_grid = seq(min(dataset$Level), max(dataset$Level), 0.1)

ggplot() + 
  geom_point(aes(x = dataset$Level , y = dataset$Salary ),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Regression Model)') +
  xlab('Level') +
  ylab('Salary')

                                    