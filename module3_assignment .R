# Data is made up and does not reflect what really happened in the election
Name = c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_political = c(4, 62, 51, 21, 2, 14, 15)
CBS_political = c(12, 75, 43, 19, 1, 21, 19)
# Create a matrix 
results = cbind(Name, ABC_political, CBS_political)
results 
# Create a dataframe 
results.df <- data.frame(Name, ABC_political, CBS_political)
results.df
# Calculating average 
mean(results.df)
mean(results.df[,2:3])
r=rowMeans(results.df[,2:3])
r.df=data.frame(Name,r)
mean(as.matrix(results.df[,2:3]))
