Rawdata<-allfours$RawData

ones <- rep(1,100)
zeros <- rep(0,100)
join <- c(ones, zeros)
resamplejoin <- sample(join,200)  ##Distributing 1,0 throughout the column

diffpriv1<- data.frame(Rawdata,first_toss=resamplejoin)

uni_rand<-c()    ## Creation of new vector
uni_rand<-runif(200,-10,10)/10 ##Uniform Distribution
diffpriv1<- data.frame(diffpriv1,randomnum=uni_rand)

Final_data<-c()
for(x in 1:nrow(diffpriv1))
{
  
  if(diffpriv1[x,2]==1)
    {
      if(diffpriv1[x,1]==1)
      {
        if(diffpriv1[x,3]<0)
          Final_data[x]<-diffpriv1[x,1]-diffpriv1[x,3]
        else
          Final_data[x]<-diffpriv1[x,1]+diffpriv1[x,3]
      }
      else if(diffpriv1[x,1]==5)
      {
        if(diffpriv1[x,3]<0)
          Final_data[x]<-diffpriv1[x,1]+diffpriv1[x,3]
        else
          Final_data[x]<-diffpriv1[x,1]-diffpriv1[x,3]
      }
      else  ## If diffpriv1[x,1]==2,3,4
        Final_data[x]<-diffpriv1[x,1]+diffpriv1[x,3]
    }
  else  ##If diffpriv1[x,2]==0
    Final_data[x]<-diffpriv1[x,1]
}
diffpriv1<- data.frame(diffpriv1,Final_data)

mean(diffpriv1$Final_data)
hist(diffpriv1$Final_data)
