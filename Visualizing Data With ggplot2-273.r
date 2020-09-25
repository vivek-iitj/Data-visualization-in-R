## 1. Introduction to Data Visualization ##

library(readr)
life_expec<-read_csv("life_expec.csv")

## 4. Specifying Variables To Axes ##

ggplot(data=life_expec)

## 5. Adding Geometric Objects to Visualize Data Points ##

ggplot(data = life_expec,aes(x=Year,y=Avg_Life_Expec))

## 6. Data Preprocessing for Visualization ##

ggplot(data = life_expec, 
aes(x = Year, y = Avg_Life_Expec)) +
geom_line()

## 7. Making Our Graph More Descriptive ##

life_expec_filter<-life_expec %>% filter(Race=="All Races" & Sex=="Both Sexes")
ggplot(data=life_expec_filter,aes(x=Year,y=Avg_Life_Expec)) +
       geom_line()

## 8. Refining Graph Aesthetics ##

ggplot(data = life_expec_filter,
aes(x = Year, y = Avg_Life_Expec)) +
geom_line() +
labs(title="United States Life Expectancy: 100 Years of Change",y="Average Life Expectancy (Years)")

## 9. Next Steps ##

ggplot(data = life_expec_filter,
aes(x = Year, y = Avg_Life_Expec)) +
geom_line() +
labs(title = "United States Life Expectancy: 100 Years of Change", y = "Average Life Expectancy (Years)") +
theme(panel.background = element_rect(fill = "white"))