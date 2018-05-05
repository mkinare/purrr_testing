# Adding a new function to be used as the 
# very basic function
list2dt<- function(list1,object1){
  #Creating a list of same size as the one passed to us
  list2<- c(rep(object1,length(list1)))
  #Creating a  data table to be used
  dt<- data.table(list1=list1,list2=list2)
  
  return(dt)
}
