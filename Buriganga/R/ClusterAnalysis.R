summer <- read.csv("/home/RHHLab/Research/Buriganga/data/summer_data_all_param.csv")

winter <- read.csv("/home/RHHLab/Research/Buriganga/data/winter_data_all_param.csv")
summer <- summer[, c(-1,-2)]
winter <- winter[, c(-1,-2)]
# scale data to mean=0, sd=1 and convert to matrix
sumscaled <- as.matrix(scale(summer))
# create heatmap and don't reorder columns
heatmap(sumscaled, Colv=F, scale='none')


# cluster rows
hc.rows <- hclust(dist(sumscaled))
plot(hc.rows)


# transpose the matrix and cluster columns
hc.cols <- hclust(dist(t(sumscaled)))
# draw heatmap for first cluster
heatmap(sumscaled[cutree(hc.rows,k=2)==1,], Colv=as.dendrogram(hc.cols), scale='none')


# draw heatmap for second cluster
heatmap(sumscaled[cutree(hc.rows,k=2)==2,], Colv=as.dendrogram(hc.cols), scale='none')


# scale data to mean=0, sd=1 and convert to matrix
sumscaled <- as.matrix(scale(winter))
# create heatmap and don't reorder columns
heatmap(sumscaled, Colv=F, scale='none')


summer <- read.csv("/home/RHHLab/Research/Buriganga/data/all_param_full_form_summer.csv")
winter <- read.csv("/home/RHHLab/Research/Buriganga/data/all_param_full_form_winter.csv")
summer <- summer[,-1]
winter <- winter[,-1]
sumscaled <- as.matrix(scale(winter))
# create heatmap and don't reorder columns
heatmap(sumscaled, Colv=F, scale='none')


sumscaled <- as.matrix(scale(summer))
# create heatmap and don't reorder columns
heatmap(sumscaled, Colv=F, scale='none')


average <- read.csv("/home/RHHLab/Research/Buriganga/data/summer_winter_average.csv")
avgscaled <- as.matrix(scale(average))
# create heatmap and don't reorder columns
heatmap(avgscaled, Colv=F, scale='none')


library(ggplot2)
avgscaled <- as.matrix(scale(average))
# create heatmap and don't reorder columns
heatmap(avgscaled, Colv=F, scale='none')+
  theme(axis.text.x = element_text(size = 20))
