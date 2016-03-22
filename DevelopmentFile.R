###Problem Set 6
##Jacob Metz
##Using devtools to create a package about the Primary race

## Load libraries and set working directory
library(devtools)
library(roxygen2)
getwd()
setwd("/Users/jacobmetz/Desktop/New Class/PS6")

#Here I am setting up my working directory to be specifically where my file will save
#to GitHub. 
#I created the package primaryrace, which created the folder in my working directory
#containing a DESCRIPTION file, a NAMESPACE file, and a R folder that will contain
#functions I write for the package

## This can be run many times as the code is updates
current.code <- as.package("primaryrace")
load_all(current.code)
document(current.code)

##Testing the Candidate class
##This test works and shows that myTest is of class Candidate
myTest <- new("Candidate", name="Jed Bartlet", delegatesWon=756, party="Democrat")
class(myTest)

##Testing whether createCandidate works
