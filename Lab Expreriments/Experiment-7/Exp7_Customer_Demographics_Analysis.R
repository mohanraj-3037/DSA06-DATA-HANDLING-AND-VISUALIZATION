library(ggplot2)

customer<-data.frame(
ID=1:3,
Age=c(28,35,42),
Gender=c("Female","Male","Female"),
Income=c(50000,60000,75000)
)

ggplot(customer,aes(factor(ID),Age,fill=factor(ID)))+geom_bar(stat="identity")+labs(title="Customer Ages",x="Customer",y="Age")
pie(table(customer$Gender),labels=names(table(customer$Gender)),main="Gender Distribution")
print(customer)
