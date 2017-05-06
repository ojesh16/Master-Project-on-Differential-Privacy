Rawdata<-rawdata_200$Raw_Data

ones <- rep(1,100)
zeros <- rep(0,99)
join <- c(ones, zeros)
resamplejoin <- sample(join,199)

diffpriv1<- data.frame(Rawdata,first_toss=resamplejoin)

Second_toss1<-c()
range<- seq(from=-0.99, to=0.99, by=0.01)
for(x in 1:nrow(diffpriv1)){
  diff <- sample(range,1)
  while(diff==0)
  {
    diff<-sample(range,1)
  }
  if(diffpriv1[x,2]==0){
    Second_toss1[x]<-diffpriv1[x,1]
  }
  else if(diffpriv1[x,2]==1){
        if(diffpriv1[x,1]>=5){
              if(diff>0)
                Second_toss1[x]<- diffpriv1[x,1]-diff
              else
                Second_toss1[x]<- diffpriv1[x,1]+diff
        }
        else if(diffpriv1[x,1]<=1)
              if(diff<0)
                Second_toss1[x]<- diffpriv1[x,1]-diff
              else
                Second_toss1[x]<- diffpriv1[x,1]+diff 
        else
          Second_toss1[x]<-diffpriv1[x,1]+diff
  }
}
diffpriv1<- data.frame(diffpriv1,Second_toss1)
mean(diffpriv1$Rawdata)
mean(diffpriv1$Second_toss1)