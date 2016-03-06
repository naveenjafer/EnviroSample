#' Make a random plot
#'
#' This function creates a random histogram plot.
#'
#' @export
#' @param n numer of random values
#' @param dist one of "normal" or "uniform".
randomplot <- function(n, dist=c("normal", "uniform")){
  #input validation
  dist <- match.arg(dist)
  stopifnot(n < 1e6)

   x=c(1,2,3,4,5)
   y=c(5,4,3,2,1)
   plot(x,y)

  #return nothing
  invisible();
}
