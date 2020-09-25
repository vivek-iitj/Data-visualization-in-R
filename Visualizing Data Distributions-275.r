## 1. Introduction ##

reviews<-read_csv("movie_reviews.csv")

## 2. Introducing The Data And Problem Statement ##

review_avgs<-reviews %>% group_by(Rating_Site) %>%
summarize(mean(Rating))

## 3. Comparing Averages Among Rating Sites ##

review_avgs <- reviews %>%
  group_by(Rating_Site) %>%
  summarize(avg = mean(Rating))
ggplot(data=review_avgs) +
aes(x=Rating_Site,y=avg) +
geom_bar(stat="identity")

## 4. Visualizing Groups Differences Using Bar Graphs ##

ggplot(data=reviews) + 
aes(x=Rating) + 
geom_histogram(bins=30)

## 5. Checking Row Counts With geom_bar() ##

ggplot(data = reviews, 
aes(x = Rating)) +
geom_histogram(bins = 30) + 
facet_wrap(~Rating_Site,nrow=2)

## 6. Using Histograms to Understand Distributions ##

ggplot(data = reviews, 
aes(x = Rating,fill=Rating_Site)) +
geom_histogram(bins = 30)

## 7. Plotting Multiple Groups Simultaneously ##

ggplot(data=reviews) + 
aes(x=Rating_Site,y=Rating) + 
geom_boxplot()

## 8. Density Plots ##

ggplot(data = reviews,
aes(x = Rating_Site, y = Rating)) +
geom_boxplot() + 
labs(title="Comparison of Movie Ratings") + 
theme(panel.background=element_rect(fill="white"))