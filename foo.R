library(snow)

## Print the arguments that r-torque has passed to it
print(commandArgs(TRUE))

## Create a snow cluster without hardcoding either 
## the type of clusteer or number of nodes.
nNodes <- as.numeric(commandArgs(TRUE)[1])
clType <- commandArgs(TRUE)[2]
cl <- makeCluster(nNodes, clType)

## Print out the cluster specs
print(cl)

## stop the clusetr.
stopCluster(cl)

