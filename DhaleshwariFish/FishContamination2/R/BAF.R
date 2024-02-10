df <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/BAF.csv")
require(ggplot)

chart <- ggcharts::bar_chart(
df,
df$Metals,
df$Values,
fill = df$Species,
facet = df$Species
)

ggplot(df, aes(x = Species, y = Values)) +
geom_bar(stat = "identity")+
facet_grid(.~Metals)+
xlab("")+
ylab("")+
scale_y_continuous(trans='log10')+
theme_light()+
theme(axis.text.x = element_text(angle = 90, hjust = 1))
theme( axis.text = element_text( size = 14, face = "bold" ),
axis.text.y = element_text(size = 12, face = "bold" ),
axis.text.x = element_text(size= 12, face = "bold"), 
legend.position="none",
strip.text = element_text(size = 12, face = "bold", colour = "black"))

body <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/bodyBAF.csv")
head <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/headBAF.csv")
ggplot(body, aes(x = Species, y = Values)) +
geom_bar(stat = "identity", aes(fill = Metals))+
facet_grid(.~Metals)+
xlab("")+
ylab("")+
scale_y_continuous(trans='log10')+
theme_classic()+
theme(axis.text.x = element_text(angle = 90, hjust = 1))


theme( axis.text = element_text( size = 14, face = "bold" ),
axis.text.y = element_text(size = 12, face = "bold" ),
axis.text.x = element_text(size= 12, face = "bold"), 
legend.position="none",
strip.text = element_text(size = 12, face = "bold", colour = "black"))

ggplot(body, aes(x = Species, y = Values)) +
geom_bar(stat = "identity", aes(fill = Metals))+
facet_grid(.~Metals)+
xlab("")+
ylab("")+
theme_classic()+
theme(axis.text.x = element_text(angle = 90, hjust = 1))+

ggplot(body, aes(x = Species, y = Values)) +
geom_bar(stat = "identity")+
facet_grid(.~Metals)+
xlab("")+
ylab("")+
theme_classic()+
theme(axis.text.x = element_text(angle = 90, hjust = 1))


theme( axis.text = element_text( size = 14, face = "bold" ),
axis.text.y = element_text(size = 12, face = "bold" ),
axis.text.x = element_text(size= 12, face = "bold"), 
legend.position="none",
strip.text = element_text(size = 12, face = "bold", colour = "black"))

library(gridExtra)
library(ggplot2)

set.seed(100)
p2 <- ggplot(body, aes(x = Species, y = Values)) +
geom_bar(stat = "identity")+
facet_grid(.~Metals)+
xlab("")+
ylab("")+
theme_classic()+
theme(axis.text.x = element_text(angle = 90, hjust = 1))
theme( axis.text = element_text( size = 14, face = "bold" ),
axis.text.y = element_text(size = 12, face = "bold" ),
axis.text.x = element_text(size= 12, face = "bold"), 
legend.position="none",
strip.text = element_text(size = 12, face = "bold", colour = "black"))

p1 <- ggplot(body, aes(x = Species, y = Values)) +
geom_bar(stat = "identity")+
facet_grid(.~Metals)+
xlab("")+
ylab("")+
theme_classic()+
theme(axis.text.x = element_text(angle = 90, hjust = 1))+
theme( axis.text = element_text( size = 14, face = "bold" ),
axis.text.y = element_text(size = 12, face = "bold" ),
axis.text.x = element_text(size= 12, face = "bold"), 
legend.position="none",
strip.text = element_text(size = 12, face = "bold", colour = "black")) + 
scale_y_reverse() + 
theme(plot.margin=unit(c(0, 0, -.8, 0), 'lines'), axis.title.x=element_blank(), 
axis.text.x=element_blank(), axis.ticks.x=element_blank())
p <- arrangeGrob(p1, p2)
print(p)