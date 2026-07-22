library(ggplot2)
library(wordcloud)

customer<-data.frame(
ID=1:5,
Age=c(25,30,35,28,40),
Score=c(4,5,3,4,5)
)

ggplot(customer,aes(Age))+geom_histogram(binwidth=5,fill="skyblue",color="black")+labs(title="Customer Age Distribution")
pie(table(customer$Score),labels=names(table(customer$Score)),main="Customer Satisfaction")
customer$Group<-c("20-30","20-30","31-40","20-30","31-40")
ggplot(customer,aes(Group,fill=factor(Score)))+geom_bar()+labs(fill="Score",title="Satisfaction by Age Group")
feedback<-c("Good","Excellent","Good","Average","Excellent")
wordcloud(feedback)
