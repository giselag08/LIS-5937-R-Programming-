# Decode code that contains a deliberate bug
# Orgiinal code
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) return(outlier.vec)}

# Error generated
Error: unexpected symbol in "  { outlier.vec[i] <- all(outliers[i,]) } return"

# Debugging code
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) }
  # Must separate return from for loop
  return(outlier.vec)

# New error generated
Error: object 'outlier.vec' not found
# outlier.vec not properly defined
