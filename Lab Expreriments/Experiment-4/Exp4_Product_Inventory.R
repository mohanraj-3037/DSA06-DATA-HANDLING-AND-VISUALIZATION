library(ggplot2)

inventory<-data.frame(
Product=c("A","B","C","D","E"),
Qty=c(250,175,300,200,220),
Category=c("Electronics","Electronics","Furniture","Furniture","Furniture"),
Price=c(500,700,400,650,550)
)

ggplot(inventory,aes(Product,Qty,fill=Product))+geom_bar(stat="identity")+labs(title="Inventory Quantity")
ggplot(inventory,aes(Category,Qty,fill=Product))+geom_bar(stat="identity")+labs(title="Inventory by Category")
ggplot(inventory,aes(Price,Qty))+geom_point(size=4,color="red")+labs(title="Price vs Quantity")
