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
         #the amount of delegates he or she was already won, the party of the
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

setGeneric("createCandidate",
    function(object="Candidate"){
        standardGeneric("createCandidate")
           })
#Here I am setting up the generic function createCandidate - which is part
#of the class Candidate - 


#The following are my tests of whether the object will be accepted given how I
#set up the class Candidate.

#This test works because each slot is appropriately filled
new("Candidate", 
    name="Jed Bartlet",
    delegatesWon=456,
    party="Democratic",
    delegatesNeeded=1927)

