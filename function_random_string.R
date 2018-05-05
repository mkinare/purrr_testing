# Random string generator

random_string <- function(n = 10) {
  helper<- function(data){
  data<- replicate(1, sample(LETTERS, 5, TRUE), FALSE)
  temp<- gsub("^c|[[:space:]]|[[:punct:]]", "",paste0(data))
  return(temp)
  }
  
  listn<- seq(n)
  a <- map(listn,~helper(data = data)) %>% unlist
  paste0(a, sprintf("%04d", sample(9999, n, TRUE)), sample(LETTERS, n, TRUE))
}
