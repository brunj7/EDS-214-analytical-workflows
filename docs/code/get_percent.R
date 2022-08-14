# library(testthat)
# 
# getPercent <- function( value, pct ) {
#   if(pct < 0) {
#     stop("Sorry, your pct is 0 which is not possible. Revise and try again.")
#   }
#   result <- value * ( pct / 100 )
#   #return( result )
# }
# 
# 
# getPercent2 <- function(value, pct, metric = "percent") {
#   testthat::expect_gte(pct, 0)
#   result <- dplyr::case_when(
#     metric == "percent" ~ value * (pct / 100),
#     metric == "permile" ~ value * (pct / 1000)
#   )
# }

getPercent <- function(value, pct_or_pmil, convtype) {
  x<-2
  if(pct_or_pmil < 0) {
    stop("Sorry, your pct is 0 which is not possible. Revise and try again.")
  }
  if(convtype == "permil"){
    result <- value * ( pct_or_pmil / 1000)
  }
  else
  {result <- value * ( pct_or_pmil / 100)
  }
}

x <- 1
result <- getPercent( 10, 25, "permil" )
print(result)
