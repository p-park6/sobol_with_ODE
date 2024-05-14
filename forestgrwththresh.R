#' Carrying capacity forest growth model
#' @param time since start
#' @param C size of forest
#' @param parms - as list with three values, r = early exponential growth rate, K = carrying capacity, g = linear growth rate once capacity has been reached
#' @param r intrinsic growth rate
#' @param K carrying capacity
#' @param g linear growth rate
#' @return derivative of population with time

forestgrwth = function(time, C, parms) {
  
    if (C >= params$thresh){ # to add threshold, replace the stuff in the () with (c >= params$thresh)
      dC = parms$g * (1- C/parms$K)
    }
    else {
      dC = parms$r *C
    }
    return(list(dC))
  }