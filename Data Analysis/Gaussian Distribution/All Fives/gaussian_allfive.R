Rawdata<- allfive$RawData

ones <- rep(1,100)
zeros <- rep(0,100)
join <- c(ones, zeros)
resamplejoin <- sample(join,200)

diffpriv<- data.frame(Rawdata,first_toss=resamplejoin)

mean<-(sum(Rawdata)/length(Rawdata))
gaussian<- rnorm(length(resamplejoin),mean,1)/10
hist(gaussian)
diffpriv<- data.frame(diffpriv,gaussian)
for(x in 1:nrow(diffpriv))
{
  if(diffpriv[x,3]==0)
    print("There is a value with 0")
  if(diffpriv[x,3]>1)
    print("number is greater than 1")
}
Second_toss<-c()
for(x in 1:nrow(diffpriv)){
   if(diffpriv[x,2]==0){
     Second_toss[x]<-"Stable"
   }
  else if(diffpriv[x,2]==1){
    Second_toss[x]<-sample(0:1,1)
  }
}
diffpriv<- data.frame(diffpriv,Second_toss)
Finalgauss<-c()
for(x in 1:nrow(diffpriv)){
  if(diffpriv[x,4]=="Stable"){
    Finalgauss[x]<-diffpriv[x,1]
  }
  else if(diffpriv[x,4]==1){
    if(diffpriv[x,1]==5)
      Finalgauss[x]<-diffpriv[x,1]-diffpriv[x,3]
    else
      Finalgauss[x]<-diffpriv[x,1]+diffpriv[x,3]
  }
  else{
    if(diffpriv[x,1]==1)
      if(diffpriv[x,3]<0)
        Finalgauss[x]<-diffpriv[x,1]-diffpriv[x,3]
      else
        Finalgauss[x]<-diffpriv[x,1]+diffpriv[x,3]
    else
      Finalgauss[x]<-diffpriv[x,1]-diffpriv[x,3]
  }
}
diffpriv<- data.frame(diffpriv,Finalgauss)  
mean(diffpriv$Finalgauss)
