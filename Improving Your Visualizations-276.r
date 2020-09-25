## 1. Introduction ##

reviews<-read_csv("movie_reviews_2.csv")
reviews_2<-reviews %>% select(FILM,RT_user_norm,Metacritic_user_nom,IMDB_norm,Fandango_Ratingvalue) %>%
rename(Rotten_Tomatoes=RT_user_norm,Metacritic=Metacritic_user_nom,IMDB=IMDB_norm,Fandango=Fandango_Ratingvalue)

## 2. Understanding The Death Rate ##

library(ggplot2)
ggplot(data=reviews_2) + 
aes(x=Fandango,y=Rotten_Tomatoes) + 
geom_point()

## 3. Plotting Two Different Dependent Variables ##

ggplot(data = reviews_2,
aes(x = Fandango, y = Rotten_Tomatoes)) +
geom_point(alpha=0.3) + 
xlim(1,5) + 
ylim(1,5) + 
theme(panel.background=element_rect(fill="white"))

## 4. Restructuring Our Data ##



ggplot(data = reviews_2,
aes(x = Fandango, y = IMDB)) +
geom_point(alpha = 0.3) +
xlim(1,5) +
ylim(1,5) +
theme(panel.background = element_rect(fill = "white"))

ggplot(data = reviews_2,
aes(x = Fandango, y = Metacritic)) +
geom_point(alpha = 0.3) +
xlim(1,5) +
ylim(1,5) +
theme(panel.background = element_rect(fill = "white"))

## 5. A Better Approach To Plotting Multiple Columns ##

create_scatter <- function(x, y) {
  ggplot(data = reviews_2) + 
    aes_string(x = x, y = y) +
    geom_point(alpha = 0.3) +
    xlim(1,5) +
    ylim(1,5) +
    theme(panel.background = element_rect(fill = "white"))
}

x_var <- names(reviews_2)[5]
y_var <- names(reviews_2)[2:4]

map2(x_var, y_var, create_scatter)