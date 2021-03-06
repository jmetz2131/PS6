#' A candidate's name, party, and delegate count.
#' 
#' Object of class \code{Candidate} as created by the \code{createCandidate} function
#'
#' 
#' An object of the class `Candidate' has the following slots:
#' \itemize{
#' \item \code{name} The name of the presidential candidate
#' \item \code{delegatesWon} The delegates the presidential candidate has already won.
#' \item \code{party} The party of the presidential candidate
#' \item \code{delegatesNeeded} The amount of delegates the presidential candidate still needs in order to win the nomination
#' }
#'
#' @author Jacob Metz: \email{jacob.metz@@wustl.edu}
#' @aliases primaryrace-class initialize,primaryrace-method calculate_delegates,primaryrace-method 
#' @rdname createCandidate
#' @export
## The above code shows that I am the author of this specific package, shows what the alias is for this package
## so it is easily searchable in help files, and also shows what the title of the help file will be with the
## @rdname command.

setClass(Class="Candidate",
         #Here I am using S4 to set up a new class Candidate to prepare for
         #creating the function createCandidate
         slots = list(
           name="character", 
           delegatesWon="numeric",
           party="character",
           delegatesNeeded="numeric"
         ), 
         
         #The above slots dictate what an object must have in order to be considered
         #part of the Candidate class. It will include the candidate's name, 
         #the amount of delegates he or she has already won, the party of the
         #candidate, and the delegates the candidate still needs to win in order
         #to clinch the respective party nomination.
         
         prototype = prototype(
           name="",
           delegatesWon=c(),
           party="",
           delegatesNeeded=c()
         )
         
         #I will only be looking at candidates from the Democratic and 
         #Republican Party, which require 2,383 delegates and 1,237 delegates, 
         #respectively, in order to clinch the nomination.
)

#' @export
setMethod("initialize", "Candidate", 
          function(.Object, name, delegatesWon, party){
            .Object@name <- name
            .Object@delegatesWon <- delegatesWon
            .Object@party <- party
            ##I used the three lines of code above to ensure that each of these would be recognized
            ##when I tested this class in my Development file
            
            if(party=="Democrat"){
              .Object@delegatesNeeded <- 2383 - delegatesWon
            }
            
            if(party=="Republican"){
              .Object@delegatesNeeded <- 1237 - delegatesWon
            }
            value=callNextMethod()
            return(value)
          }
) 

##This method includes how the delegatesNeeded aspect of the Candidate class is calculated
##and serves to initialize the method itself. I used if statements to specifically clarify
##the delegate totals for a candidate from the Democratic and Republican parties.


#' @export
setMethod(f="print", "Candidate",
          definition=function(x){
            if(party=="Republican"){
              return(print("I believe this person can make America great again!"))
            }
          }
        )
##This method includes a print method that is specific to the Republican party.
##The if statement I wrote will return "I believe this person can make America great again"
##if the party of the candidate in question is Republican.

#' @export
setMethod(f="show", "Candidate",
          definition=function(object){
            if(party=="Democrat"){
              return(show("I believe this person will build off of President Obama's success!"))
            }
          }
        )

##This method includes a show method that is specific to the Democratic party.
##The if statement I wrote will return "I believe this person will build off of President Obama's
##success!"if the party of the candidate in question is Democratic.


#' @export
setMethod(f="createCandidate",
          definition=function(name, delegatesWon, party){
            return(new("Candidate", 
                       name=name,
                       delegatesWon=delegatesWon,
                       party=party
                       )
                   )
          }
##The createCandidate function is very similar to the class Candidate but this serves as a means
##for any user to more simply input the same information as above in this R file: name, delegatesWon,
##and party.



