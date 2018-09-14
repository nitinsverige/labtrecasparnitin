wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6), v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5), w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

dijkstra<-function(df,s){

na_vec<-c(rep(NA,1,dim(wiki_graph)[1]))
wiki_graph<-cbind(wiki_graph,na_vec)
index<-1

maxnod<-max(wiki_graph[,"v1"])

small<-c(0)
small_nod<-c(s) 

rem<-which(wiki_graph[,"v2"]==s)
wiki_graph<-wiki_graph[-rem,]

while(index<maxnod){
#Startar dijkstra
a<-which(wiki_graph[,"v1"]==s)
wiki_graph[a,4]<-wiki_graph[a,"w"] + small[index]
b<-which.min(wiki_graph[,"na_vec"])

cost<- wiki_graph[b,"na_vec"]
d<-wiki_graph[b,2]



index<-index+1
rem<-which(wiki_graph[,2]==d)
wiki_graph<-wiki_graph[-rem,]
small_nod[index]<-d
small[index]<-cost
s<-d}

return(rbind(small_nod,small))}



