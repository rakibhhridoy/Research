require("corrplot")
winter <- read.csv("data/Buriganga_W .csv")

str(winter)
dt_cor <- winter[, 1:10]
dt_cor

str(dt_cor)

corrplot(
  cor(dt_cor[,-1]),
  addCoef.col = "white",
  number.cex = 1.5,
  number.digits = 2,
  tl.col = "black",
  tl.cex = 1.4,
  diag = FALSE,
  bg = "grey",
  outline = "black",
  addgrid.col = "white",
  mar = c(1,1,1,1))



corrplot.mixed(cor(dt_cor[, -1]), lower = 'shade', upper = 'pie')
corrplot.mixed(cor(dt_cor[, -1]), lower = 'shade', upper = 'pie', tl.pos = "lt", tl.col = "black", tl.cex = .8)
dt1 <- winter[,19:28]
dt1

corrplot(
  cor(dt1),
  addCoef.col = "white",
  number.cex = 1.5,
  number.digits = 2,
  tl.col = "black",
  tl.cex = 1.4,
  diag = FALSE,
  bg = "grey",
  outline = "black",
  addgrid.col = "white",
  mar = c(1,1,1,1))

cor(dt1)
corrplot.mixed(cor(dt1), lower = 'shade', upper = 'pie', tl.pos = "lt", tl.col = "black", tl.cex = 1.8)

summer <- read.csv("data/Buriganga_S.csv")
summer
sd1 <- summer[, 2:10]
sd1
str(sd1)

corrplot(
  cor(sd1),
  addCoef.col = "white",
  number.cex = 1.5,
  number.digits = 2,
  tl.col = "black",
  tl.cex = 1.4,
  diag = FALSE,
  bg = "grey",
  outline = "black",
  addgrid.col = "white",
  mar = c(1,1,1,1))

corrplot.mixed(cor(sd1), lower = 'shade', upper = 'pie', tl.pos = "lt", tl.col = "black", tl.cex = 1.8)

cor(sd1)

summer

sd2 <- summer[, 19:28]
sd2
corrplot(
  cor(sd2),
  addCoef.col = "white",
  number.cex = 1.5,
  number.digits = 2,
  tl.col = "black",
  tl.cex = 1.4,
  diag = FALSE,
  bg = "grey",
  outline = "black",
  addgrid.col = "white",
  mar = c(1,1,1,1))
corrplot.mixed(cor(sd2), lower = 'shade', upper = 'pie', tl.pos = "lt", tl.col = "black", tl.cex = 1.8)

require(factoextra)
require(FactoMineR)
require(ggplot2)
require(haven)
require(psych)

sample1 <- PCA(data.frame(summer[2:28]), graph = FALSE, ncp = 10,  scale.unit = TRUE)
eig.val <- get_eigenvalue(sample1)
eig.val
write.csv(eig.val, "eig_val_summer.csv")

rotate1 <- pca(summer[,2:28], nfactors=5, rotate="varimax")
rotate1

?pca

rotate1$loadings
rotate1$r.scores

write.csv(rotate1$loadings, "rotated_pca_summer.csv")
describe(winter)

fitw <- factanal(winter[,2:28], factors= 3, rotation = "oblimin")
fitw

require("psych")

fa(winter[,2:28], factors = 3, rotation = "varimax")
fcas <- pca(summer[, 2:28], nfactors = 5, rotate = F)
fcas
fcas$loadings
write.csv(fcas$loadings, "pca_summer.csv")

sample2 <- PCA(data.frame(winter[2:28]), graph = FALSE, ncp = 10,  scale.unit = TRUE)
eig.val <- get_eigenvalue(sample2)
eig.val
write.csv(eig.val, "eig_val_winter.csv")


fcaw <- pca(winter[, 2:28], nfactors = 5, rotate = F)
fcaw
write.csv(fcaw$loadings, "pca_winter.csv")
rotate2 <- pca(winter[, 2:28], nfactors = 5, rotate = "varimax")
rotate2

write.csv(rotate2$loadings, "rotated_winter_pca.csv")

KMO(summer[,2:28])

require(readxl)
summer <- read.csv("data/Buriganga_S.csv")
winter <- read.csv("data/Buriganga_W .csv")

summer

winter
a = t.test(summer$pH, winter$pH, conf.level = 0.01)
a$p.value
a = t.test(summer$pH, winter$pH, conf.level = 0.05)
a$p.value

require(readxl)
require(corrplot)
winter <- read_excel("/home/RHHLab/Research/Buriganga/data/microbio_winter.xlsx") 
summer <- read_excel("/home/RHHLab/Research/Buriganga/data/microbio_summer.xlsx")
winter <- winter[,-1]
summer <- summer[,-1]

colnames(summer)[1] = "NH4+"
colnames(summer)[2] = "NO3"
colnames(summer)[3] = "PO4"
colnames(summer)[4] = "SO4"
colnames(summer)[5] = "THB"
colnames(summer)[6] = "TC"
colnames(summer)[7] = "FC"
colnames(summer)[8] = "FS"
colnames(summer)[9] = "Vibrio C"
colnames(summer)[10] = "E coli"
summer

colnames(winter)[1] = "NH4+"
colnames(winter)[2] = "NO3"
colnames(winter)[3] = "PO4"
colnames(winter)[4] = "SO4"
colnames(winter)[5] = "THB"
colnames(winter)[6] = "TC"
colnames(winter)[7] = "FC"
colnames(winter)[8] = "FS"
colnames(winter)[9] = "Vibrio C"
colnames(winter)[10] = "E coli"
winter

corr_winter <- cor(winter)
corr_summer <- cor(summer)
corrplot(corr_winter,title = "", method = "square", outline = T, addgrid.col = "darkgray", order="hclust", mar = c(4,0,4,0), addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "b", tl.col = "indianred4", tl.cex = 1.5, cl.cex = 1.5)
corrplot(corr_winter,title = "", method = "square", outline = T, addgrid.col = "darkgray", order="hclust", mar = c(4,0,4,0), addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "d", tl.col = "indianred4", tl.cex = 1.5, cl.cex = 1.5)
corrplot(corr_winter, method = 'square', diag = FALSE, order = 'hclust',
         addrect = 3, rect.col = 'blue', rect.lwd = 3, tl.pos = 'd')

corrplot(corr_winter, method = "color", outline = T, addgrid.col = "darkgray", order="hclust", addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "b", tl.col = "indianred4", tl.cex = 1.5, cl.cex = 1.5, addCoef.col = "white", number.digits = 2, number.cex = 1.5, col = colorRampPalette(c("darkred","white","midnightblue"))(100))
corrplot.mixed(corr_winter, lower = 'shade', upper = 'pie', tl.pos = "lt", tl.col = "black", tl.cex = 1.8)
corrplot(corr_summer,title = "", method = "square", outline = T, addgrid.col = "darkgray", order="hclust", mar = c(4,0,4,0), addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "b", tl.col = "indianred4", tl.cex = 1.5, cl.cex = 1.5)
corrplot(corr_summer, method = "color", outline = T, addgrid.col = "darkgray", order="hclust", addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "b", tl.col = "indianred4", tl.cex = 1.5, cl.cex = 1.5, addCoef.col = "white", number.digits = 2, number.cex = 1.5, col = colorRampPalette(c("darkred","white","midnightblue"))(100))
corrplot.mixed(corr_summer, lower = 'shade', upper = 'pie', tl.pos = "lt", tl.col = "black", tl.cex = 1.8)


















