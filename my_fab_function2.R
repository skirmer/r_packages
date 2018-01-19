#' Look in the Cage!
#'
#' @param animal What animal's cage are you going to visit?
#'
#' @return data frame with the animal's traits, if that animal exists in this zoo.
#'
#' @export
#'
#' @examples
#' lookInTheCage("lion")
#'


lookInTheCage <- function(animal){

  zoo <- feather::read_feather("./zoo.feather")

  cage <- dplyr::filter(zoo, animalname == animal)

  if(nrow(cage) > 0){
    print(cage)
  } else { print("Sorry, this zoo doesn't have that animal!")}

}

