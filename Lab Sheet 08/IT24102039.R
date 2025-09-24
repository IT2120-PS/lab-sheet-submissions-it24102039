setwd("C:\\Users\\ASUS\\Desktop\\IT24102039")

#Exercise

##Question 1
data<-read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

pop_mean <- mean(Weight.kg.)
pop_sd   <- sd(Weight.kg.)

pop_mean
pop_sd

##Question 2
samples <- matrix(nrow = 6, ncol = 25)   
for(i in 1:25){
  samples[, i] <- sample(Weight.kg., 6, replace = TRUE)
}

colnames(samples) <- paste0("S", 1:25)

s_means <- apply(samples, 2, mean)
s_sds   <- apply(samples, 2, sd)

s_means
s_sds

##Question 3
sample_mean <- mean(s_means)

sample_sd <- sd(s_means)

sample_mean
sample_sd

theoretical_sd <- pop_sd / sqrt(6)
theoretical_sd

