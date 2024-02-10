require(corrplot)
df <- read.csv("MetalsRaw.csv")
df <- df[,-1]
corr_metals <- cor(df)
corrplot(
  corr_metals,
  addCoef.col = "black",
  number.cex = 1.5,
  number.digits = 2,
  tl.col = "black",
  tl.cex = 1.4,
  diag = FALSE,
  bg = "grey",
  outline = "black",
  addgrid.col = "white",
  mar = c(1,1,1,1))


require(corrplot)
df <- read.csv("MetalsRaw.csv")
df <- df[,-1]
corr_metals <- cor(df)
corrplot(corr_metals, method = "color", outline = T, addgrid.col = "darkgray", 
         order="hclust", addrect = 4, 
         rect.col = "black", rect.lwd = 5,cl.pos = "b", 
         tl.col = "black", tl.cex = 1.5, cl.cex = 1.5, 
         addCoef.col = "black", number.digits = 2, 
         number.cex = 1.5, col = colorRampPalette(c("darkred","white","midnightblue"))(100))


require(corrplot)
df <- read.csv("MetalsRaw.csv")
df <- df[,-1]
corr_metals <- cor(df)
corrplot.mixed(corr_metals, lower = 'shade', upper = 'pie', 
               tl.pos = "lt", tl.col = "black", tl.cex = 1.8)


require(corrplot)
df <- read.csv("MetalsRaw.csv")
df <- df[,-1]
corr_metals <- cor(df)
corrplot(corr_metals,title = "", method = "square", outline = T, 
         addgrid.col = "darkgray", order="hclust", mar = c(4,0,4,0), 
         addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "b", 
         tl.col = "black", tl.cex = 1.5, cl.cex = 1.5)


require(corrplot)
df <- read.csv("/home/RHHLab/Research/Others/corr.csv")
corr_metals <- cor(df)
corrplot(
  corr_metals,
  addCoef.col = "black",
  number.cex = 1.5,
  number.digits = 2,
  tl.col = "black",
  tl.cex = 1.4,
  diag = FALSE,
  bg = "grey",
  outline = "black",
  addgrid.col = "white",
  mar = c(1,1,1,1))


corrplot(corr_metals, method = "color", outline = T, addgrid.col = "darkgray", 
         order="hclust", addrect = 4, 
         rect.col = "black", rect.lwd = 5,cl.pos = "b", 
         tl.col = "black", tl.cex = 1.5, cl.cex = 1.5, 
         addCoef.col = "black", number.digits = 2, 
         number.cex = 1.5, col = colorRampPalette(c("darkred","white","midnightblue"))(100))


corrplot.mixed(corr_metals, lower = 'shade', upper = 'pie', 
               tl.pos = "lt", tl.col = "black", tl.cex = 1.8)


corrplot(corr_metals,title = "", method = "square", outline = T, 
         addgrid.col = "darkgray", order="hclust", mar = c(4,0,4,0), 
         addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "b", 
         tl.col = "black", tl.cex = 1.5, cl.cex = 1.5)


require(corrplot)
df <- read.csv("/home/RHHLab/Research/Others/datapca.csv")
corr_metals <- cor(df)
corrplot.mixed(corr_metals, lower = 'shade', upper = 'pie', 
               tl.pos = "lt", tl.col = "black", tl.cex = 1.8)


ggsave(filename = "/home/RHHLab/Research/Others/CorrMetals.png", dpi = 1000)
