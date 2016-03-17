#' colorme
#'
#' Returns colors from EB color scheme
#' @param col Name of color.
#' @param numb Number of colors to return
#' @keywords file
#' @export
#' @examples
#' colorme("blue")

colorme = function(col = NULL, numb = NULL){

    scheme =  list(blue    = "#062FCD",
                   red     = "#e31a1c", 
                   green   = "#33a02c",
                   orange  = "#ff7f00",
                   pink    = "#A80BA7",
                   lblue   = "#a6cee3",
                   lgreen  = "#b2df8a", 
                   lred    = "#fb9a99", 
                   yellow  = "#DDCC77",
                   lorange = "#fdbf6f",
                   lgrey   = "#a8a8a8",
                   grey    = "#696969",
                   dgrey   = "#2a2a2a")

    if(!is.null(col)){
        return(unlist(scheme[names(scheme) %in% col]))
    }
    
    if(!is.null(numb)){
        return(unlist(scheme)[1:numb])
    }

}
