library("xlsx")

gd<-read.csv(choose.files(),header=TRUE)
gd
plot(mpg~cylinders,gd)
plot(displacement~horsepower,gd)
with(gd,text(mpg~cylinders,labels=horsepower,pos=2,cex=0.8))
data2<-gd[,-c(2,6)]
data2
mean_data<-apply(data2,2,mean)
mean_data
std<-apply(data2,2,sd)
std

distance<-dist(data2)
distance
print(distance,digits = 8)
hc<-hclust(distance,"ave")
plot(hc,labels = gd$displacement)
clust1<-color_clusters(hclust(distance),5)
plot(clust1)
