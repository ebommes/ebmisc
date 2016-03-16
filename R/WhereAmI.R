#' WhereAmI
#'
#' Allows to locate a file in Mac OS
#' @param fn Name of the file you want to locate.
#' @keywords file
#' @export
#' @examples
#' WhereAmI("FSS-Pathfinder.R")

WhereAmI = function(fn){
	os = Sys.info()['sysname']
	if(tolower(os) == "darwin"){
		paths = system(paste("find ~/ -name", fn), intern = TRUE)
		paths = gsub(fn, "", paths, fixed = TRUE)
		return(paths)

	}else{
		return("Not Mac OS, please set working directory manually.")
	}
}