# Part 1: Calculate population mean and standard deviation
setwd("C:\\Users\\V I C T U S\\OneDrive\\Documents\\Desktop\\IT24102829PS")
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
attach(data)
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)

# Part 2: Draw samples and calculate sample means and standard deviations
samples <- c()
sample_names <- c()
for (i in 1:25) {
  S <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, S)
  sample_names <- c(sample_names, paste('S', i))
}
colnames(samples) <- sample_names
s.means <- apply(samples, 2, mean)
s.sds <- apply(samples, 2, sd)

# Part 3: Calculate and compare parameters of sample means
sample_mean_of_means <- mean(s.means)
sample_sd_of_means <- sd(s.means)
theoretical_sd_of_means <- pop_sd / sqrt(6)