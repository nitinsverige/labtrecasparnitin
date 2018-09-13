
#'
#' @param x1 
#' @param x2 
#'
#' @return
#' @export
#'
#' @examples
euclidiean <- function(x1,x2){
  if(x1>x2){
    smaller<-x2
  } else {
    smaller<-x1
  }
  for(i in 1:smaller){
    if((x1%%i==0)&&(x2%%i==0)){
      hcf=i
    }}
  return(hcf)
}