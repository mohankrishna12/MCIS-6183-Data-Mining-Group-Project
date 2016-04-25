###Linear regression model

>data <- read.csv(file.choose(), header = TRUE)
> 
>###Data Manipulation
>data <- subset(data, data$Title.type == 'Feature Film')
>data$our <- data$Our..Rating
>data$imdb <-data$IMDb.Rating
>data$year<-as.factor(ifelse( data$Year< 1970, '1960s',ifelse( data$Year < 1980, '1970s',ifelse( data$Year < 1990, '1980s',ifelse( data$Year < 2000, '1990s',ifelse( data$Year< 2010, '2000s',ifelse( data$Year < 2020, '2010s',NA)))))) )
>data$time<-log(data$Runtime..mins.)
>data$votes<-data$Num..Votes
>data$year.c<-2014-data$Year

####Creating dummy for Genre
>for (i in 1: max(nrow(data))){
+        temp<-strsplit(as.character(data$Genres[i]), ",")
+          data[i, "Genre.N"]<-length(temp[[1]])
+          for (j in 1:length(temp[[1]])){
+                        data[i,paste("Genre",j,sep=".")]<-temp[[1]][j]
+                    }
+           
+                 }
>data$Genre.1<-as.factor(gsub(" ","", data$Genre.1))
>data$Genre.2<-as.factor(gsub(" ","", data$Genre.2))
>data$Genre.3<-as.factor(gsub(" ","", data$Genre.3))
>data$Genre.4<-as.factor(gsub(" ","", data$Genre.4))
>data$Genre.5<-as.factor(gsub(" ","", data$Genre.5))
>
>data$Genre.1 <- as.factor(ifelse(is.na(data$Genre.1)==T, "0",as.character(data$Genre.1)))
>data$Genre.2 <- as.factor(ifelse(is.na(data$Genre.2)==T, "0",as.character(data$Genre.2)))
>data$Genre.3 <- as.factor(ifelse(is.na(data$Genre.3)==T, "0",as.character(data$Genre.3)))
>data$Genre.4 <- as.factor(ifelse(is.na(data$Genre.4)==T, "0",as.character(data$Genre.4)))
>data$Genre.5 <- as.factor(ifelse(is.na(data$Genre.5)==T, "0",as.character(data$Genre.5)))
>
t<-unique(c(as.character(unique(data["Genre.1"])$Genre.1), as.character(unique(data["Genre.2"])$Genre.2),
+             as.character(unique(data["Genre.3"])$Genre.3),as.character(unique(data["Genre.4"])$Genre.4),
+             as.character(unique(data["Genre.5"])$Genre.5)))

>t<-t[-c(8,9,11,13,14,15, 16,18,19,20,21,22)]

>for (i in 1:length(t)){
+     for (j in 1: nrow(data)){
+         
+         if (data[j,"Genre.1"]==t[i] | data[j,"Genre.2"]==t[i] | data[j,"Genre.3"]==t[i] | data[j,"Genre.4"]==t[i] | data[j,"Genre.5"]==t[i]) 
+             data[j,paste(t[i],"","")]<-1
+         else
+             data[j,paste(t[i],"","")]<-0
+     }
+ }


###Creating dummy for director
>r<-row.names(as.data.frame(sort(table(data$Directors), decreasing = TRUE)[1:12]))
>for (i in 1:length(r)){
+     for (j in 1: nrow(data)){
+         
+         if (data[j,"Directors"]==r[i] ) 
+             data[j,paste(r[i],"","")]<-1
+         else
+             data[j,paste(r[i],"","")]<-0
+     }
+ }

>### MODEL 1: Linear regression of our rating on IMDb rating
>###This produces the scatter plot
>plot(data$imdb,data$our, main = "scatterplot")
>
>model1 = lm(data$our ~ data$imdb, data = data)
>summary(model1)  ###output on Github
> 
> 

>abline(model1, col="red")
> 
>### This produces the diagnostic plot
>par(mfrow = c(2,2))
>plot(model1)
> 
>
>
>### MODEL 2: Multiple Linear regression of our rating on IMDb,some Genres, Directors(those with more than 4 movies) and year of release.
>model2 = lm(data$our ~ data$imdb+data$drama+data$crime+data$sci_fi+data$"Ingmar Bergman"+data$"Martin Scorsese"+data$"Alfred Hitchcock"+data$year.c, data = data)
>summary(model2) ###output on Github
> 
>### This produces the diagnostic plot
>par(mfrow = c(2,2))
>plot(model2)
> 
>### MODEL 3: Generalized Additive Model(GAM) of our rating on IMDb rating
>library(mgcv)
>model3 = gam(data$our ~ s(data$imdb), data = data)
>summary(model3)
>plot(model3,scale = 0,se = 2,shade = TRUE, pages = 1)
> 
> 
>### MODEL 4: Generalized Additive Model(GAM) of our rating on IMDb rating, some Genres, Directors(those with more than 4 movies) and year of release
>model4 = gam(data$our ~ te(data$imdb,data$year.c)+data$"drama "+data$"crime "+data$"sci_fi "+data$"Ingmar Bergman"+data$"Martin Scorsese"+data$"Alfred Hitchcock", data = data)
>summary(model4)
>plot(model4, select = 1,theta = -18,phi = 15,pers = TRUE)


###More codes to create other models would be done here