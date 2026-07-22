library(ggplot2)

sales<-data.frame(
Month=c("Jan","Feb","Mar","Apr","May"),
Sales=c(15000,18000,22000,20000,23000),
Budget=c(2000,2500,3000,2800,3500),
Product=c("A","B","C","D","E")
)

ggplot(sales,aes(Month,Sales,group=1))+geom_line(color="blue")+geom_point(size=3)+labs(title="Monthly Sales",x="Month",y="Sales")
ggplot(sales,aes(Product,Sales,fill=Product))+geom_bar(stat="identity")+labs(title="Top Selling Products",x="Product",y="Sales")
ggplot(sales,aes(Budget,Sales))+geom_point(size=4,color="red")+labs(title="Advertising Budget vs Sales",x="Advertising Budget",y="Sales")
