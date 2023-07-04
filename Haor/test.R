table <- read.csv("/home/RHHLab/Bucket/Research/table.csv")
head(table)
table <- table[, 3:13]
head(table)
write.csv(table, file = "table_haor.csv")
df <- read.csv("table_haor.csv")
head(df)
df <- df[,2:12]
head(df)
head(df)
colnames(df)[1] ="Soil Profile"
colnames(df)[2] ="% Sand"
colnames(df)[3] ="% Silt"
colnames(df)[4] ="% Clay"
colnames(df)[5] ="Textural class"
colnames(df)[6] ="Bulk den g/cc"
colnames(df)[7] ="pH"
colnames(df)[8] ="Org C %"
colnames(df)[9] ="% N"
colnames(df)[10] ="Moisture"
colnames(df)[11] ="CEC"
head(df)
write.csv(df, file="reformat_haor.csv")
tail(df)
df <- df[-49,]
tail(df)
df <- df[, -5]
head(df)
summary(df)
library(factoextra)
library(FactoMineR)

for_pca <- df[, 2:10]
head(for_pca)
res.pca <- PCA(df[,2:10], scale.unit = TRUE, ncp = 3, graph = FALSE)

eig.val <- get_eigenvalue(res.pca)
eig.val

library(haven)
library(psych)
fca <- pca(df[, 2:10], nfactors = 3, rotate = F)
fca
fca <- pca(df[, 2:10], nfactors = 3, rotate = "varimax")
fca
res.pca <- PCA(df[,2:10], scale.unit = TRUE, ncp = 3, graph = FALSE)

eig.val <- get_eigenvalue(res.pca)
eig.val
install.packages("rgl")
res.pca
df
fca <- pca(df[, 2:10], nfactors = 3, rotate = F)
res.pca <- PCA(df[,2:10], scale.unit = TRUE, ncp = 3, graph = TRUE)
res.pca$eig
model <- prcomp(t(df[,2:10]), scale=TRUE)
model
fit <- hclust(dist(model$x[,1:3]), method="complete") # 1:3 -> based on 3 components
groups <- cutree(fit, k=5)                            # k=5 -> 5 groups
install.packages("rgl")
library(rgl)
plotPCA <- function(x, nGroup) {
  n <- ncol(x) 
  if(!(n %in% c(2,3))) { # check if 2d or 3d
    stop("x must have either 2 or 3 columns")
  }
  
  fit <- hclust(dist(x), method="complete") # cluster
  groups <- cutree(fit, k=nGroup)
  
  if(n == 3) { # 3d plot
    plot3d(x, col=groups, type="s", size=1, axes=F)
    axes3d(edges=c("x--", "y--", "z"), lwd=3, axes.len=2, labels=FALSE)
    grid3d("x")
    grid3d("y")
    grid3d("z")
  } else { # 2d plot
    maxes <- apply(abs(x), 2, max)
    rangeX <- c(-maxes[1], maxes[1])
    rangeY <- c(-maxes[2], maxes[2])
    plot(x, col=groups, pch=19, xlab=colnames(x)[1], ylab=colnames(x)[2], xlim=rangeX, ylim=rangeY)
    lines(c(0,0), rangeX*2)
    lines(rangeY*2, c(0,0))
  }
}
plotPCA(model$x[,1:2], 5)
plotPCA(model$x[,1:3], 5)
require(rgl)
require(scatterplot3d)
fca[5]
pca_table <- princomp(df[, 2:10], cor= TRUE, scores = TRUE)
summary(pca_table)
pca_table
pca_table$scores
require(rgl)
plot3d(pca_table$scores[, 1:3],col="red", type = "p")
persp(pca_table$scores[,1:3])
install.packages("scatter3")
library("scatter3")
scatter3(C(1,:),C(2,:),C(3,:),27,spec,'filled')
nice3dn
xlabel('PC1'); ylabel('PC2'); zlabel('PC3')
title(sprintf('3 components, captures %.4g%% of total variation',100*q3))
plot3d(pca_table$scores[, 1:3])







install.packages("plot3D")
library("plot3D")

pc1 = pca_table$scores[,1]
pc2 = pca_table$scores[,2]
pc3 = pca_table$scores[,3]
pca_table$scores
pc1
scatter3D(pc1, pc2, pc3, colvar = z, col = NULL, add = FALSE)
text3D(pc1, pc2, pc3, colvar = NULL, add = FALSE)
points3D(pc1, pc2, pc3)
lines3D(pc1, pc2, pc3)
scatter2D(x, y, colvar = NULL, col = NULL, add = FALSE)
text2D(x, y, labels, colvar = NULL, col = NULL, add = FALSE)



scatter3D(x, y, z, bty = "g", pch = 18, col = gg.col(100))
# ramp.col: custom palettes
scatter3D(x, y, z, bty = "g", pch = 18,
          col = ramp.col(c("blue", "yellow", "red")) )

scatter3D(pc1, pc2, pc3, phi = 0, bty = "g",
          pch = 20, cex = 2, ticktype = "detailed")


CI <- list(z = matrix(nrow = length(pc1),
                      data = rep(0.1, 2*length(pc1))))
scatter3D(pc1, pc2, pc3, phi = 0, bty = "g", col = gg.col(100), 
          pch = 18, CI = CI)



plot3d(pc1, pc2, pc3, col = rainbow(1000))

install.packages("tidyverse")
installed.packages("RNHANES")
library(scatterplot3d)
library(tidyverse)
library(RNHANES)


  
cols <- c("darkblue", "orange", "darkgreen")
 


shapes = c(16, 17, 18) 
shapes <- shapes[as.numeric(pc1, pc2, pc3)]

scatterplot3d(pc1,
              pc2, 
              pc3, 
              main="PCA 3D Individuals",
              xlab = "PC1",
              ylab = "PC2",
              zlab = "PC3",
              box = FALSE,
              grid = TRUE,
              pch = shapes)

colors <- c("#999999", "#E69F00", "#56B4E9")


scatterplot3d(pc1, pc2,pc3, pch = 16, color = colors,
              grid=TRUE, box=FALSE)

levels(pc1)


pca_table$scores
write.csv(pca_table$scores, "pca_table.csv")
getwd()
