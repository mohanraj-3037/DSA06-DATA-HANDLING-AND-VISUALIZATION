library(ggplot2)

survey<-data.frame(
SurveyID=1:3,
Q1=c("A","B","C"),
Q2=c("B","A","A"),
Q3=c("C","D","B")
)

q1<-as.data.frame(table(survey$Q1))
colnames(q1)<-c("Answer","Count")
ggplot(q1,aes(Answer,Count,fill=Answer))+geom_bar(stat="identity")+labs(title="Question 1 Responses",x="Answer",y="Count")

resp<-data.frame(
Question=rep(c("Q1","Q2","Q3"),each=4),
Answer=rep(c("A","B","C","D"),3),
Count=c(1,1,1,0,2,1,0,1,0,1,1,1)
)

ggplot(resp,aes(Question,Count,fill=Answer))+geom_bar(stat="identity")+labs(title="Survey Responses")
print(survey)
