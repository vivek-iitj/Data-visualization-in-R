## 1. Introduction ##

life_expec<-read_csv("life_expec.csv")

## 2. Processing The Data For Visualization ##

life_expec_sex<-life_expec %>% filter(Race=="All Races"& Sex!="Both Sexes")

## 3. Creating Line Graphs By Groups ##

ggplot(data=life_expec_sex,aes(x=Year,y=Avg_Life_Expec)) +
geom_line() +
facet_wrap(~Sex,ncol=1)
       

## 4. Zooming In On Our Axes ##

ggplot(data=life_expec_sex) + 
aes(x=Year,y=Avg_Life_Expec,color=Sex) + 
       geom_line() 
       

## 5. Plotting Subgroups Within Groups ##

ggplot(data = life_expec_sex, 
aes(x = Year, y = Avg_Life_Expec, color = Sex)) +
geom_line() + 
xlim(1900,1950)

## 6. Manipulating Graph Aesthetics ##

life_expec_sex_race<-life_expec %>% filter(Race!="All Races" & Sex!="Both Sexes")

## 7. Another Way To Visualize Variable Relationships ##

ggplot(data=life_expec_sex_race) + 
aes(x=Year,y=Avg_Life_Expec,color=Race,lty=Sex) + 
geom_line() + 
scale_color_manual(values=c("darkgreen","darkorchid")) + 
scale_linetype_manual(values=c(1,4))


## 8. Next Steps ##

ggplot(data=life_expec_sex_race) + 
aes(x=Year,y=Avg_Life_Expec,lty=Race) + 
geom_line() + 
labs(title="United States Life Expectancy: 100 Years of Change",y="Average Life Expectancy (Years)") + 
theme(panel.background=element_rect(fill="white")) + 
scale_linetype_manual(values=c(1,4)) + 
facet_wrap(~Sex,ncol=2)
