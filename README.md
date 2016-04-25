# A SYSTEM TO PREDICT PERSONAL USER MOVIE RATINGS WITH IMDb DATA AND R PROGRAMMING LANGUAGE.

# OVERVIEW
This project would provide a model to predict personal user movie ratings. The personal user ratings would compare with IMDb ratings for a set of 400 movies on different data mining models using the attributes in the dataset as predictors.
users predictions would be based on different predictors like IMDb ratings, year of release, Genre and directors.the application compares personal user rating with IMDb rating.

# DATA
We got the dataset from [IMDb Website] (http://www.imdb.com/user/ur49179813/ratings) but we plan to use subset of the dataset. we got 400 movies downloaded in an Excel sheet in CSV format. The dataset has these attributes (columns): position, const, date and time created,
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
## Data Analysis:
###### MODEL 1
   Taking linear regression model using our rating on IMDb rating, output result is:
    
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
Signif. codes:  0 �***� 0.001 �**� 0.01 �*� 0.05 �.� 0.1 � � 1

Residual standard error: 1.671 on 378 degrees of freedom
Multiple R-squared:  0.0005135,	Adjusted R-squared:  -0.002131 
F-statistic: 0.1942 on 1 and 378 DF,  p-value: 0.6597

  ```
 Assumptions made when fitting linear regression model:
1. The Y-values are dependent
2. The Y-values can be expressed as a linear function of the X variables
3. variation of observations around the regression line(residual SE) is constant
4. for given value of X, Y values(the errors) are normally distributed.

while the assumptions of a linear model are never perfectly met, we want to still check if there are reasonable assumptions to work with.
 our rating(data$our) is the outcome or dependent Y-variable and IMDb rating(data$imdb) is the independent X-variable. on the diagnostic plot
(screenshots attached to the Project PDF ), the residual plot shows that on the X-axis there are fitted values(lm(data$our ~ data$imdb))
 and  on the Y-axis are the residuals(erros). from the residual plot we can see the linearity assumption is met because red line is fairly flat.
on the Normal Q-Q plot, the Y-axis is the ordered standardized residuals and on the X-axis is the ordered theoretical residuals(lm(data$our ~ data$imdb)).
the errors/residuals are normally distributed, the data looks fairly normal and points are on a diagonal line.
scale-location plot and Residual vs leverage help us more to identify the linearity between the two numeric variables.
From the summary we can see the residuals/errors
- Min = -5.1926 1Q = -1.1671 Median = -0.1448 3Q = 0.8727 Max= 2.8775
- Estimate of the intercept = 7.66447
- Standard Error = 1.11697
- test statistics value = 6.862
- p-value = 2.79e-11
- slope for data$imdb = -0.06376
- Standard Error = 0.14469
- test statistics value = -0.441
- p-value = 0.66
- Residual standard Error = 1.671, which is the measure of the variation of observations around the regression line.
- Multiple R-squared = 0.0005135
- Adjusted R-squared = -0.002131
- The root mean squared error = 1.667013

In summary: on the diagnostic plot, the residual plot and Normal Q-Q plot let us know that the linearity assumption is met but the residual standard error(1.671)
is large. to an extent knowing the IMDb rating can help us predict our rating. further we want to test our rating on other 
models


###### MODEL 2
 Multiple Linear regression of our rating on IMDb rating, some Genres, Directors(those with more than 4 movies), year of release.

   ```
   Call:
lm(formula = data$our ~ data$imdb + data$drama + data$crime + 
    data$sci_fi + data$"Ingmar Bergman" + data$"Martin Scorsese" + 
    data$"Alfred Hitchcock" + data$year.c, data = data)

Residuals:
   Min     1Q Median     3Q    Max 
-5.274 -1.178 -0.068  1.019  3.058 

Coefficients:
                         Estimate Std. Error t value Pr(>|t|)    
(Intercept)              7.854304   1.207553   6.504 2.53e-10 ***
data$imdb               -0.116118   0.160246  -0.725   0.4691    
data$drama               0.155187   0.247692   0.627   0.5313    
data$crime               0.124066   0.201858   0.615   0.5392    
data$sci_fi              0.055064   0.362202   0.152   0.8792    
data$"Ingmar Bergman"    0.093249   0.511226   0.182   0.8554    
data$"Martin Scorsese"  -1.110335   0.603337  -1.840   0.0665 .  
data$"Alfred Hitchcock"  0.236044   0.794990   0.297   0.7667    
data$year.c              0.003250   0.004564   0.712   0.4768    
---
Signif. codes:  0 �***� 0.001 �**� 0.01 �*� 0.05 �.� 0.1 � � 1

Residual standard error: 1.677 on 371 degrees of freedom
Multiple R-squared:  0.01287,	Adjusted R-squared:  -0.008419 
F-statistic: 0.6045 on 8 and 371 DF,  p-value: 0.7742

 ```


###### MODEL 3
  Generalized Additive Model(GAM) of our rating on IMDb rating
 
  ```
  Family: gaussian 
Link function: identity 

Formula:
data$our ~ s(data$imdb)

Parametric coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  7.17368    0.08574   83.67   <2e-16 ***
---
Signif. codes:  0 �***� 0.001 �**� 0.01 �*� 0.05 �.� 0.1 � � 1

Approximate significance of smooth terms:
             edf Ref.df     F p-value
s(data$imdb)   1      1 0.194    0.66

R-sq.(adj) =  -0.00213   Deviance explained = 0.0514%
GCV = 2.8084  Scale est. = 2.7936    n = 380

 ```

###### MODEL 4 
  Generalized Additive Model(GAM) of our rating on IMDb rating, some Genres, Directors(those with more than 4 movies), year of release

  ```
Family: gaussian 
Link function: identity 

Formula:
data$our ~ te(data$imdb, data$year.c) + data$"drama " + data$"crime " + 
    data$"sci_fi " + data$"Ingmar Bergman" + data$"Martin Scorsese" + 
    data$"Alfred Hitchcock"

Parametric coefficients:
                        Estimate Std. Error t value Pr(>|t|)    
(Intercept)              7.02199    0.24179  29.042   <2e-16 ***
data$"drama "            0.15910    0.24802   0.641   0.5216    
data$"crime "            0.12954    0.20228   0.640   0.5223    
data$"sci_fi "           0.05134    0.36260   0.142   0.8875    
data$"Ingmar Bergman"    0.10511    0.51215   0.205   0.8375    
data$"Martin Scorsese"  -1.13591    0.60564  -1.876   0.0615 .  
data$"Alfred Hitchcock"  0.30644    0.80572   0.380   0.7039    
---
Signif. codes:  0 �***� 0.001 �**� 0.01 �*� 0.05 �.� 0.1 � � 1

Approximate significance of smooth terms:
                          edf Ref.df    F p-value
te(data$imdb,data$year.c)   3      3 0.35   0.789

R-sq.(adj) =  -0.0103   Deviance explained = 1.37%
GCV = 2.8925  Scale est. = 2.8164    n = 380

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
| Uchendu Korieocha | I developed the Project proposal and i would be editing the R programming codes i got from the Web blog(cited reference below). i'm proficient in Microsoft C# programming language but i've a good understanding on how codes work. though i'm new to R programming language, i'm using youtube video tutorials uploaded by our instructor to have basic understanding on how R works.i"ve strong analytical skills,i can work as a team in an organized way.all these i would bring to the successful completion of the project. | After successful meetings with my team members, we agreed to develop an application to predict personal users movie ratings using different predictors on the dataset. this stage of the project is a successful compiled proposal to explain what the project is all about. | 
|Tribikya Thapa | I'm proficient in data handling, i've worked on different SQL projects in the past. i downloaded the dataset from IMDb website to serve as our dataset, i shared the data cleaning process with Chigozie since it's a group project | i downloaded subset of the dataset which has 400 movies,cleaned it and added random personal user rating to 200 movies to serve as our rating    |
| Chigozie Mozie | My role in this project is to work on the dataset because that's my area of expertise. | i added personal user rating to the remaining 200 movies     |
| Dimosh Pradhan | My major role in this project is to prepare the documentation and presentations | so far i've analyzed the first linear regression model and subsequently i would per take in data analysis, but my major contribution would be to work with the screenshots for presentation |
| Uchendu Korieocha | Data analysis | studying all the models we got from  the Web Blog(cited in our reference below). presently preparing data analysis and how well we can use our dataset to work with the models, so as to predict movie ratings correctly |
# DELIVERABLES AND CHECKPOINTS
| Checkpoint Date | Expected Deliverable | Responsible Team Member(s) | Checkpoints Results |
| --------------- | -------------------- | -------------------------- | ------------------- |
| 02-15-2016 | Project Proposal | Uchendu Korieocha | We agreed to work together on how to predict personal users ratings as clearly stated on the proposal. At this point we searched for dataset to suit our project.   |
| 03-13-2016 | Compiled dataset | Tribikya Thapa | We got a Dataset on MovieLens that lacked some variables like names of directors,actors and actresses. we created random names of directors,actors and actresses, which made the dataset rigid, incorrect and difficult to give the required outcome. with this, we did more research to get a better dataset|
| 04-14-2016 | Compiled dataset from IMDb website | Chigozie Mozie | After our previous failed attempts to compile a good dataset, my team members and i stumbled on a rich dataset on IMDb website, my role was to download it on an Excel sheet, cleaned it up to get a subset of the overall dataset. we've 400 movies to work with now.|
| 04-21-2016 | Codes Analysis | Uchendu Korieocha | i got codes/models from the web blog to work with the 400 movies, at this point i'm analyzing the codes to get the best way it can work with our dataset. in a couple of days, the codes would use the data to predict personal users ratings.|  

#REFERENCES
- Dataset: Retrieved from [IMDB Website] (http://www.imdb.com/user/ur49179813/ratings)
- Dimiter Toshkov (2014, March 2). Predicting movie ratings with IMDb data and R. (Web blog post). Retrieved from [Web blog post] (http://www.r-boggers.com/predicting-movie-ratings-with-imdb-data-and-r) 


