cr <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/cr.csv")
mn <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/mn.csv")
fe <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/fe.csv")
As <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/as.csv")
se <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/se.csv")
cu <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/cu.csv")
cd <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/cd.csv")
co <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/co.csv")
pb <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/pb.csv")
hg <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/hg.csv")
zn <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/individual/zn.csv")
require("ggplot2")
require("dbscan")
require("ggsci")
require("factoextra")
cr1 <- cr[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Cr", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Cr", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


cr
cr1 <- mn[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Mn", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Mn", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


mn
cr1 <- fe[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Fe", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Fe", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


fe
cr1 <- se[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Se", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Se", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


se
cr1 <- cu[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Cu", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Cu", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


cu
cr1 <- cd[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Cd", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Cd", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


cd
cr1 <- co[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Co", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Co", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


co
cr1 <- pb[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Pb", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Pb", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


pb
cr1 <- hg[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Hg", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Hg", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


hg
cr1 <- zn[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 2)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Zn", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "Zn", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))


zn
cr1 <- As[, -3]
cr1 <- scale(cr1)
clcr <- hdbscan(cr1, minPts = 3)
plot(cr1, col=clcr$cluster+1, pch=20)


colp = "futurama"
fviz_dend(x= clcr$hc, cex= 1, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "As", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 40))


fviz_dend(x= clcr$hc, cex= 0, 
          lwd = 2, k = 5,
          rect = TRUE,
          rect_border = colp,
          rect_fill = TRUE,
          k_colors = colp, main = "", xlab = "As", ylab= "", labels_track_height = 0.65, cex.lab = 10)+
  theme(axis.title = element_text(size = 70))
