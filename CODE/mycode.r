###Linear regression model

> data <- read.csv(file.choose(), header = TRUE)
> 
> ###Data Manipulation
> data <- subset(data, data$Title.type = 'Feature Film')
> data <- subset(data, data$Title.type == 'Feature Film')
> data$our <- data$Our..Rating
> data$imdb <-data$IMDb.Rating
> summary(lm(data$our~data$imdb), data = data)

###output on Github

###More codes to create other models would be done here