#Here is a function that will return the data as a tibble
#It can be used for other datasets, but here I use the trees data


data("trees")

tibble_units <- function(data, action){
  if (!is.data.frame(data)){
    stop("Input is not a data frame.")
    }else if (action == "mm"){
      mm <- data[, 1] * 25.4
      return(mm)
    }else if (action == "metre"){
      mtr <- data[, 1] * 0.0254
      return(mtr)
    }else{
      tibble::as_tibble(data)
    }
  }


