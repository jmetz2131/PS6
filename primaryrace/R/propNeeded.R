#' Takes a candidate's name and the number of delegates they've won and returns the proportion of delegates left needed to clinch the nomination.
#' 
#' @param candidate, The candidate's name is the object and must be of class Candidate
#' @param amountLeft, The total amount of delegates left during the nomination process
#' @param amountNeeded, The amount of delegates a candidate needs to clinch the nomination 
#' @return propLeft, The proportion of delegates left that are needed for a candidate to clinch the nomination
#'
#' 
#' @author Jacob Metz: \email{jacob.metz@@wustl.edu}
#' @aliases propNeeded, ANY-method
#' @rdname propNeeded
#' @export
## The above code shows that I am the author of this specific package, shows what the alias is for this package
## so it is easily searchable in help files, and also shows what the title of the help file will be with the
## @rdname command. I also set up the parameters with @param so one can know what the function actually
##accomplishes.

setGeneric("propNeeded",
           def=function(candidate, amountLeft)
              {standardGeneric("propNeeded")}
            )


#' @export
setMethod(f="propNeeded",
          definition=function(candidate, amountLeft){
          propLeft<-(candidate@amountLeft-candidate@amountNeeded)/(candidate@amountLeft)
          return(paste("The proportion of delegates this candidate has left is", propLeft, 
                       "in order to clinch the nomination."))
          })
          

