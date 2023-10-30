#Here is a function that will return the data as a tibble
#It can be used for other datasets, but here I use the trees data


data("trees")


tibble_units <- function(data_set){
  if (!is.data.frame(data_set)){
    stop("Input is not a data frame.")
  }else{
    tibble::as_tibble(data_set)
  }
}

