# A SYSTEM TO PREDICT MOVIE RATINGS WITH IMDB DATA AND R PROGRAMMING LANGUAGE.

# OVERVIEW
This project would provide a model to predict personal user movie ratings. The personal user ratings would compare with IMDB ratings for a set of 400 movies.
users predictions would be based on different predictors like IMDB ratings, year of release, Genre and directors.the application helps to predict a new movie and a customer 
can decide whether to book ticket ahead.

# DATA
We got the dataset from [IMDB Website] (http://www.imdb.com/user/ur49179813/ratings) but we plan to use subset of the dataset. we got 400 movies downloaded in an Excel sheet in CSV format. The dataset has these attributes (columns): position, const, date and time created,
title, title type, directors, demetriodor-880-20065 rated, IMBD rating, runtime (mins), year, genre, number votes, released date(month\day\year) and URL.the data is laid out to be human readable not 
machine-readable the data is generally consistent.

# RESEARCH QUESTIONS
- Can this application correctly predict the success or failure of the movies based on actor,actress or director previous historical data
- What if the historical data collated about actor,actress and director on which the prediction of success or failure of movies were wrong
- Can there be other ways to predict the success or failure of movies?
- If some actors,actresses or directors failed movies data were collated when they started their careers but improved on the success of their
movies as they gained experience in the industry. is it right to predict the success or failure of their recent movies based on past data 
collated?

# CODE AND APPLICATION
The models in this application would be built and tested using R programming language. R is a freely available language and environment for statistical computing
and graphics which provides a wide variety of statistical and graphical techniques like linear or non-linear modelling, statistical tests, time series analysis, 
classification, clustering etc. The integrated development environment on which the models would be built is RStudio, which is a set of integrated tools designed to be more productive with R. it includes a console, 
syntax-highlighting editor that supports direct code execution. 



     
# PROJECT MANAGEMENT
Team Members:
- Uchendu Daniel Korieocha(999990236): I developed the proposal and i would be editing the R programming codes i got from IMDB website to suit our project.
- Tribikya Mardan Thapa(888881533):Tribikya will create the database,write the SQL queries to connect with the C# codes. Tribikya will work
as the Admin in this project.
- Chigozie Mozie(999990435): Chigozie will work on the dataset to add other features if necessary and he will also write the project report.
- Dimosh Tradhan(999990248): Dimosh will work with Chigozie on the dataset and he will create the PowerPoint slides for presentation when 
the project is completed.

# TEAM
| Team Member | Roles and skills | Contributions |
| ----------- | ---------------- | ------------- |
| Uchendu Korieocha | I developed the Project proposal and i would be editing the R programming codes i got from IMDB website. i'm proficient in Microsoft C# programming language but i've a ,i"ve strong analytical skills,i can work as a team in an organized way.all these i would bring to the successful completion of the project. | After successful meetings with my team members, we agreed to develop an application to predict success or failure of a movie using data mining. this stage of the project is a successful compiled proposal to explain what the project is all about. | 
|Tribikya Thapa | I create the database to best suite the application for the project. I deveolop the SQL queries. The majority of my task is ETL (extract, transform, and load) data from a source to destination. In this project the source data were in xlsx file and the destination database is in SSMS(SQL Server MAnagement Studio) When I get the data extracted from the source I transfer it according to the project need and populate it to all the different tables that we have in our database. |
| Chigozie Mozie | I created the final data sets which comprises of 200 movies with 7 attributes which are; movie i.d, movies, genre, average, actor, actress, director. I compiled the data sets before fowarding them the SQL developer(Tribikya). The 200 random data was selected by the SQL developer using an SQL code from the data sets imported to SSMS data base from an excel spreadsheet using microsoft import/export wizard. The average rating of each 200 movies was derived using an SQL query.
| Dimosh Pradhan | As we all decided to create an application to predict the success or failure of the upcomming movies, I worked on the collection of dataset for execution of our project working with Chigozie. We have our dataset on the xlsx file format which we have imported in MSsql database. We are looking ahead to add some feature on the project. Also I collected the combination data set of different combination of actor , actress and director which is used in our project to get the ratings. I also will be creating the powerpoint slides for our project which explains the full details of the project and has some screenshots of our application.  |
# DELIVERABLES AND CHECKPOINTS
| Checkpoint Date | Expected Deliverable | Responsible Team Member(s) | Checkpoints Results |
| --------------- | -------------------- | -------------------------- | ------------------- |
| 02-15-2016 | Project Proposal | Uchendu Korieocha | We've agreed to work on a dataset that has different Excel sheets, our aim is to combine these Excel sheets, add names of actors, actresses and directors. we intend to create an Excel file that has all the possible combinations of actors, actresses and directors, each possible combination will be given a rating.   |
| 03-09-2016 | SQL codes for data set  | Tribikya Thapa |          |



