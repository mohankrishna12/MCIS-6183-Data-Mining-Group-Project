# A SYSTEM TO PREDICT MOVIE RATINGS WITH IMDb DATA AND R PROGRAMMING LANGUAGE.

# OVERVIEW
This project would provide a model to predict personal user movie ratings. The personal user ratings would compare with IMDB ratings for a set of 400 movies on different data mining models using the attributes in the dataset as predictors.
users predictions would be based on different predictors like IMDb ratings, year of release, Genre and directors.the application compares personal user rating with IMDb rating.

# DATA
We got the dataset from [IMDB Website] (http://www.imdb.com/user/ur49179813/ratings) but we plan to use subset of the dataset. we got 400 movies downloaded in an Excel sheet in CSV format. The dataset has these attributes (columns): position, const, date and time created,
title, title type, directors, our rating, IMBb rating, runtime (mins), year, genre, number votes, released date(month\day\year) and URL.the data is laid out to be human readable not 
machine-readable the data is generally consistent.
As part of working with the Dataset, two members in the group did a random rating of all the 400 movies as if they saw all the movies,the ratings were recorded and added to the dataset as "our rating". 
IMDb let one score movies from one to ten, half points and fractions are not allowed. our rating is in integer value  


# RESEARCH QUESTIONS
- How many predictors would the models need to correctly predict my rating?
- Are 400 movies enough to work with so as to correctly predict my rating? do i need more movies?
- Can there be other ways to predict the ratings of a movie?


# CODE AND APPLICATION
The models in this application would be built and tested using R programming language. R is a freely available language and environment for statistical computing
and graphics which provides a wide variety of statistical and graphical techniques like linear or non-linear modelling, statistical tests, time series analysis, 
classification, clustering etc. The integrated development environment on which the models would be built is RStudio, which is a set of integrated tools designed to be more productive with R. it includes a console, 
syntax-highlighting editor that supports direct code execution. 
- Data Analysis:
   Taking linear regression model using our rating and IMDb rating, output result is:
    
   ```
   Call:
lm(formula = data$our ~ data$imdb)

Residuals:
    Min      1Q  Median      3Q     Max 
-5.1926 -1.1671 -0.1448  0.8727  2.8775 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  7.66447    1.11697   6.862 2.79e-11 ***
data$imdb   -0.06376    0.14469  -0.441     0.66    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.671 on 378 degrees of freedom
Multiple R-squared:  0.0005135,	Adjusted R-squared:  -0.002131 
F-statistic: 0.1942 on 1 and 378 DF,  p-value: 0.6597

  ```



     
# PROJECT MANAGEMENT
Team Members:
- Uchendu Daniel Korieocha(999990236): I developed the proposal and i would be editing the R programming codes/models to suit our project.
- Tribikya Mardan Thapa(888881533): I downloaded the dataset we are working on presently, I worked on half of the dataset which are 200 movies, i randomly added personal user ratings under our rating column.
- Chigozie Mozie(999990435): I worked on the remaining 200 movies, just like what Tribikya did, i added personal user ratings to the dataset
- Dimosh Tradhan(999990248): I analyzed the models we got from the web blog and i'm also contributing in the data analysis. my major work on this project is to work on the presentations and documentation, so i'll be working with screenshots.

# TEAM
| Team Member | Roles and skills | Contributions |
| ----------- | ---------------- | ------------- |
| Uchendu Korieocha | I developed the Project proposal and i would be editing the R programming codes i got from IMDB website. i'm proficient in Microsoft C# programming language but i've a good understanding on how codes work. though i'm new to R programming language, i'm using youtube video tutorials uploaded by our instructor to have basic understanding on how R works.i"ve strong analytical skills,i can work as a team in an organized way.all these i would bring to the successful completion of the project. | After successful meetings with my team members, we agreed to develop an application to predict personal users movie ratings using different predictors on the dataset. this stage of the project is a successful compiled proposal to explain what the project is all about. | 
|Tribikya Thapa | I'm proficient in data handling, i've worked on different SQL projects in the past. i downloaded the dataset from IMDb website to serve as our dataset, i shared the data cleaning process with Chigozie since it's a group project | i downloaded subset of the dataset which has 400 movies,cleaned it and added random personal user rating to 200 movies to serve as our rating    |
| Chigozie Mozie | My role in this project is to work on the dataset because that's my area of expertise. | i added personal user rating to the remaining 200 movies     |
| Dimosh Pradhan | My major role in this project is to prepare the documentation and presentations | so far i've analyzed the first linear regression model and subsequently i would per take in data analysis, but my major contribution would be to work with the screenshots for presentation |
| Uchendu Korieocha | Data analysis | studying all the models we got from  the Web Blog(cited in our reference below). presently preparing data analysis and how well we can use our dataset to work with the models, so as to predict movie ratings correctly |
# DELIVERABLES AND CHECKPOINTS
| Checkpoint Date | Expected Deliverable | Responsible Team Member(s) | Checkpoints Results |
| --------------- | -------------------- | -------------------------- | ------------------- |
| 02-15-2016 | Project Proposal | Uchendu Korieocha | We agreed to work together on how to predict personal users ratings as clearly stated on the proposal. At this point we searched for dataset to suit our project.   |
| 03-13-2016 | Compiled dataset | Tribikya Thapa | We got a Dataset on MovieLens that lacked some variables like names of directors,actors and actresses. we created random names of directors,actors and actresses, which made the dataset rigid, incorrect and difficult to give the required outcome. with this, we did more research to get a better dataset|
| 04-14-2016 | Compiled dataset from IMDB website | Chigozie Mozie | After our previous failed attempts to compile a good dataset, my team members and i stumbled on a rich dataset on IMDB website, my role was to download it on an Excel sheet, cleaned it up to get a subset of the overall dataset. we've 400 movies to work with now.|
| 04-18-2016 | Codes Analysis | Uchendu Korieocha | i got a source code on IMDB to work with our 400 movies, at this point i'm analyzing the codes to get the best way it can work with our dataset. in a couple of days, the codes would use the data to predict personal users ratings.|  

#REFERENCES
- Dataset: Retrieved from [IMDB Website] (http://www.imdb.com/user/ur49179813/ratings)
- Dimiter Toshkov (2014, March 2). Predicting movie ratings with IMDB data and R. (Web blog post). Retrieved from [Web blog post] (http://www.r-boggers.com/predicting-movie-ratings-with-imdb-data-and-r) 


