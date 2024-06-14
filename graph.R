data <- read.csv("MSDS-Orientation-Computer-Survey(in).csv")
hist(CPU.Number.of.Cores..int., breaks=16, main="Number of Cores in CPUs", xlab="Number of Cores", xlim=c(0,16), col="darkmagenta")