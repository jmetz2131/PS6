###Problem Set 6
##Jacob Metz
##Using devtools to create a package about the Primary race

install.packages("devtools")
library("devtools")
install.packages("roxygen2")
library("roxygen2")
#The above lines of code are installing the code necessary to help me 
#update the help files and functions within the same document that I'll commit to the
#master.

getwd()
setwd("/Users/jacobmetz/Desktop/New Class/PS6")
create("primaryrace")
#Here I am setting up my working directory to be specifically where my file will save
#to GitHub. 
#I created the package primaryrace, which created the folder in my working directory
#containing a DESCRIPTION file, a NAMESPACE file, and a R folder that will contain
#functions I write for the package



