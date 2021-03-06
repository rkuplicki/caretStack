#' Combine results from parallelized outer loop.
#'
#' A function to combine results from parallelized outer loop.
#' This function is for parallel computing and is used by rNCV. It indicates how to combine the results from parallel computing in outer loop.
#' It performs parallel computing at repeat step.

comb_outer <- function(LL1, LL2){
  stack.wt     <- rbind(LL1$stack.wt,     LL2$stack.wt)
  stack.model  <- list(LL1$stack.model,   LL2$stack.model)
  y.pred       <- rbind(LL1$y.pred,       LL2$y.pred)
  perf.by.fold <- rbind(LL1$perf.by.fold, LL2$perf.by.fold)
  var.imp      <- rbind(LL1$var.imp,      LL2$var.imp)
  return(list(stack.wt = stack.wt, y.pred = y.pred,
              perf.by.fold = perf.by.fold, var.imp = var.imp))
}
