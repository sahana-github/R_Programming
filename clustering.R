# Library required for fviz_cluster function
install.packages("factoextra")
library(factoextra)

# Loading dataset
df <- mtcars

# Omitting any NA values
df <- na.omit(df)

# Scaling dataset
df <- scale(df)

# output to be present as PNG file
png(file = "C:\\Users\\Sahana\\Desktop\\san_r\\san_r\\KMeansExample.png")

km <- kmeans(df, centers = 4, nstart = 25)

# Visualize the clusters
fviz_cluster(km, data = df)

# saving the file
dev.off()

# output to be present as PNG file
png(file = "C:\\Users\\Sahana\\Desktop\\san_r\\san_r\\KMeansExample2.png")

km <- kmeans(df, centers = 5, nstart = 25)

# Visualize the clusters
fviz_cluster(km, data = df)

# saving the file
dev.off()
