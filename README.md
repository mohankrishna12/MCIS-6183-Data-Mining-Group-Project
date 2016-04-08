# TO PREDICT THE SUCCESS OR FAILURE OF A MOVIE USING DATA MINING

# OVERVIEW
This application would provide a model for predicting the success class such as flop, hit, super hit of movies. this class will be based 
on developed methodology in which the historical data of each component such as actor,actress,director, music director that influences 
the success or failure of a movie is given. There will be an Admin section in the application to control the backend where more movies 
data of a particular film crew will be added(if necessary). the selected movie would compare with a particular actor,actress,director 
to know if the movie would be a success of failure and this is based on historical data stored in the database. also what particular 
day of the week the movie is released contributes to the success or failure of the movie. if the movie releases on a weekend, there 
would be a higher weighting but if movie releases on a week day there would be a lower weighting. The factors such as actor,actrss,
director etc can predict the success or failure of the movie. the application helps to find out review of new movies and a customer 
can decide whether to book ticket in advance or not.

# DATA
We got the dataset from [MovieLens] (http://grouplens.org/datasets/movielens/) but we plan to use subset of the dataset. the dataset 
has four Microsoft Excel files in the typeof comma separated values which are links.csv, movies.csv, ratings.csv and tags.csv. 
we paln to add more entities to the data like names of actors,actress, music directors.the data is laid out to be human readable not 
machine-readable the data is generally consistent.

# RESEARCH QUESTIONS
- Can this application correctly predict the success or failure of the movies based on actor,actress or director previous historical data
- What if the historical data collated about actor,actress and director on which the prediction of success or failure of movies were wrong
- Can there be other ways to predict the success or failure of movies?
- If some actors,actresses or directors failed movies data were collated when they started their careers but improved on the success of their
movies as they gained experience in the industry. is it right to predict the success or failure of their recent movies based on past data 
collated?

# CODE AND APPLICATION
This application will be designed and implemented using Microsoft C# and Microsoft SQL Server(Database Engine). The integrated development
environment will be Visual Studio 2010 Express Edition

SQL Codes to filter the data Set.
 -- First the Data was imported to SSMS database from an excel spreasheet using the Microsoft Import/Export Wizard
 
 -- Second, 200 random data was selected for our projects data sample using the following SQL code:
 
 -        SELECT TOP 200 * FROM [dbo].[movies$]
 -        
 -- Third, the 200 dataset were imported to a new tabel in SSMS databse again using Import/Export Wizard and the source for the data was the SQL query

 -- Fourth,movie entity/table had a one to many realtionship with the rating entity/table, so to find the average rating of each 200 movies the following SQL query was used.
 
         SELECT 
         
       	M.[movieId]
 	      ,M.[title]
 	      ,M.[genres]
 	      ,AVG(R.[rating]) AS RATINGS
 	      
       FROM [dbo].[200_MOVIE_DATA] M
       
       LEFT JOIN [dbo].[ratings$] R
 	      ON R.[movieId] = M.[movieId]
 
       GROUP BY 
       M.[movieId]
       	,M.[title]
       ,M.[genres]
 	      
 -- NEXT STEP IS TO GET THE AVERAGE RATING OF ALL POSSIBLE COMBINATIONS

SELECT
	[ACTOR]
	,[ACTRESS]
	,[DIRECTOR]
	,AVG([AVG_RATING])AS AVG_RATING_AAD


FROM [dbo].[Final_Data_Set]

GROUPBY
	[ACTOR]
	,[ACTRESS]
	,[DIRECTOR]

# PROJECT MANAGEMENT
Team Members:
- Uchendu Daniel Korieocha(999990236): I developed the proposal and i would be writing the C# codes for the application.
- Tribikya Mardan Thapa(888881533):Tribikya will create the database,write the SQL queries to connect with the C# codes. Tribikya will work
as the Admin in this project.
- Chigozie Mozie(999990435): Chigozie will work on the dataset to add other features if necessary and he will also write the project report.
- Dimosh Tradhan(999990248): Dimosh will work with Chigozie on the dataset and he will create the PowerPoint slides for presentation when 
the project is completed.

# TEAM
| Team Member | Roles and skills | Contributions |
| ----------- | ---------------- | ------------- |
| Uchendu Korieocha | I developed the Project proposal and i would be writing the C# codes. i'm proficient in Microsoft C# programming language,i"ve strong analytical skills,i can work as a team in an organized way.all these i would bring to the successful completion of the project. | After successful meetings with my team members, we agreed to develop an application to predict success or failure of a movie using data mining. this stage of the project is a successful compiled proposal to explain what the project is all about. | 
|Tribikya Thapa | I create the database to best suite the application for the project. I deveolop the SQL queries. The majority of my task is ETL (extract, transform, and load) data from a source to destination. In this project the source data were in xlsx file and the destination database is in SSMS(SQL Server MAnagement Studio) When I get the data extracted from the source I transfer it according to the project need and populate it to all the different tables that we have in our database.

| Dimosh Pradhan| As we all decided to create an application to predict the success or failure of the upcomming movies, I worked on the collection of dataset for execution of our project working with Chigozie. We have our dataset on the xlsx file format which we have imported in MSsql database. We are looking ahead to add some feature on the project. Also I collected the combination data set of different combination of actor , actress and director which is used in our project to get the ratings. I also will be creating the powerpoint slides for our project which explains the full details of the project and has some screenshots of our application.  |
# DELIVERABLES AND CHECKPOINTS
| Checkpoint Date | Expected Deliverable | Responsible Team Member(s) | Checkpoints Results |
| --------------- | -------------------- | -------------------------- | ------------------- |
| 02-15-2016 | Project Proposal | Uchendu Korieocha |                      |
| 03-09-2016 | SQL codes for data set  | Tribikya Thapa | 888881533 |

