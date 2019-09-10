# 
# Author: Graham Smith
# Edited by: Annisa Dea
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

flipNTimes <- function(numOfFlips, coinBias){
  #numOfFlips is number of time we want to flip the coin
  #coinBias is a number between 0 and 1 
  coinNumber <- array(0, numOfFlips)
  for (i in 1:numOfFlips){
    coinNumber[i] <- if (runif(1) < coinBias) 
      1 #heads
    else 0 #tails
  }
  print(coinNumber)
}


replicateCoinFlips <- function(numOfRep, numOfFlips, coinBias){
  #numOfRep refers to the number of replications of the original coin flip expt
  for (j in 1:numOfRep){
    flipNTimes(numOfFlips, coinBias)
  }
}
