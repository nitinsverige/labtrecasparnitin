#' The package is a part of lab work at univeristy.
#' @param x1 The first input
#' @param x2 The second input
#'
#' @return The output from \code{\link{return}}
#' @export
#'
#' @examples
#' euclidiean(30,45)
#' \dontrun{
#' euclidiean(45,90)
#' }
#' 
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