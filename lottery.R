# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

flipNTimes <- function(numOfFlips, coinBias){
  coinNumber <- array(0, numOfFlips)
  for (i in 1:numOfFlips){
    coinNumber[i] <- if (runif(1) < coinBias) 
      1 #heads
    else 0 #tails
  }
  print(coinNumber)
}


repeatCoinFlipExpt <- function(numOfExpts, numOfFlips, coinBias){
  for (j in 1:numOfExpts){
    flipNTimes(numOfFlips, coinBias)
  }
}
