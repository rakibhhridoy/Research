df <- read.csv("/home/RHHLab/Research/Buriganga/SeasonalMicrobio.csv")
install.packages('ggrain')

library(ggrain)
ggplot(df, aes(Season, THB, fill = THB)) + 
geom_rain()


library(raincloudplots)
library(raincloudplots)

df_1x1 <- data_1x1(
array_1 = df$THB,
array_2 = df$TC,
jit_distance = .09,
jit_seed = 321)

raincloud_1_h <- raincloud_1x1(
data = df_1x1, 
colors = (c('dodgerblue','darkorange')), 
fills = (c('dodgerblue','darkorange')), 
size = 1, 
alpha = .6, 
ort = 'v') +
scale_x_continuous(breaks=c(1,2), labels=c("THB", "TC"), limits=c(0, 3)) +
xlab("Season") + 
ylab("cfu/ml") +
theme_classic()


source("R_rainclouds.R")
install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)    # alternatively, this also loads %>%
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)   


df %>% ggplot2(aes(x=Season,y=THB, fill = Season)) +
geom_flat_violin(position = position_nudge(x = .2, y = 0),adjust =2, alpha = 0.5) +
geom_point(position = position_jitter(width = .15), size = .8) +
geom_boxplot(aes(x = Season, y = THB, fill = Season),outlier.shape = NA, alpha = .5, width = .1, colour = "black")+
theme_jen() +
labs(title = "Raincloud plot of body mass by species", x = 'Species', y = 'Body mass (g)') +
easy_remove_legend()

require(ggplot)
raincloud_penguins_V <- raincloud_1x1(
data = , 
colors = (c('dodgerblue','darkorange')), 
fills = (c('dodgerblue','darkorange')), 
size = 1, 
alpha = .6, 
ort = 'v') +
scale_x_continuous(breaks=c(1,2), labels=c("chinstrap", "gentoo"), limits=c(0, 3)) +
xlab("Species") + 
ylab("Body Mass (g)") +
theme_classic()

raincloud_penguins_V
ggplot(df, aes(x = Season, y = THB, fill =  Season)) +
geom_rain(rain.side = 'l')


ggplot(df, aes(1, THB)) +
geom_rain() +
theme_classic() +
theme(axis.title.x = element_blank(), 
axis.text.x = element_blank(), axis.ticks.x = element_blank())


ggplot(df, aes(1, THB, fill = Season)) +
geom_rain(alpha = .5) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2')


ggplot(df, aes(1, THB, fill = Season, color = Season)) +
geom_rain(alpha = .6,
boxplot.args = list(color = "black", outlier.shape = NA)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2')


ggplot(df, aes(1, THB, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'l',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2') 


ggplot(df, aes(Season, THB, fill = Season)) +
geom_rain(alpha = .5) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') 


ggplot(df.long[df.long$time %in% c('t1', 't2'),], aes(Season, THB, fill = Season)) +
geom_rain(alpha = .5, rain.side = 'f2x2', id.long.var = "id") +
theme_classic() +
scale_fill_manual(values=c("dodgerblue", "darkorange")) +
guides(fill = 'none', color = 'none')
Error in ggplot(df.long[df.long$time %in% c("t1", "t2"), ], aes(Season,  : 
object 'df.long' not found
ggplot(df, aes(Season, THB, fill = Season)) +
geom_rain(alpha = .5) +
theme_classic() +
scale_fill_manual(values=c("dodgerblue", "darkorange")) +
scale_color_manual(values=c("dodgerblue", "darkorange"))


ggplot(df, aes(1, THB, fill = Season, color = Season)) +
geom_rain(alpha = .6,
boxplot.args = list(color = "black", outlier.shape = NA)) +
theme_classic() +
scale_fill_manual(values=c("dodgerblue", "darkorange")) +
scale_color_manual(values=c("dodgerblue", "darkorange"))


ggplot(df, aes(1, THB, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'r',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_manual(values=c("dodgerblue", "darkorange")) +
scale_color_manual(values=c("dodgerblue", "darkorange"))


?ylab()
There were 17 warnings (use warnings() to see them)
df
ggplot(df, aes(1, THB, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'r',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2')+
theme(axis.text=element_text(size=12, face = "bold"),
axis.title=element_text(size=14,face="bold"), 
axis.text.x=element_text(size=10, face = "bold"),
axis.text.y=element_text(size=10, face = "bold"))+
xlab("(a)") + 
ylab("Total Heterotrophic Bacteria (value × 10^4 cfu/ml)")


ggplot(df, aes(1, TC, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'r',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2') +
theme(axis.text=element_text(size=12, face = "bold"),
axis.title=element_text(size=14,face="bold"), 
axis.text.x=element_text(size=10, face = "bold"),
axis.text.y=element_text(size=10, face = "bold"))+
xlab("(a)") + 
ylab("Total coliform (MPN× 10^4/100ml water)")


ggplot(df, aes(1, FC, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'r',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2')  +
theme(axis.text=element_text(size=12, face = "bold"),
axis.title=element_text(size=14,face="bold"), 
axis.text.x=element_text(size=10, face = "bold"),
axis.text.y=element_text(size=10, face = "bold"))+
xlab("(a)") + 
ylab("Fecal coliform (MPN× 10^3/100ml water)")


ggplot(df, aes(1, FS, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'r',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2')  +
theme(axis.text=element_text(size=12, face = "bold"),
axis.title=element_text(size=14,face="bold"), 
axis.text.x=element_text(size=10, face = "bold"),
axis.text.y=element_text(size=10, face = "bold"))+
xlab("(a)") + 
ylab("Fecal streptococci (MPN× 10^3/100ml)")


ggplot(df, aes(1, Vibrio.C, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'r',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2')  +
theme(axis.text=element_text(size=12, face = "bold"),
axis.title=element_text(size=14,face="bold"), 
axis.text.x=element_text(size=10, face = "bold"),
axis.text.y=element_text(size=10, face = "bold"))+
xlab("(a)") + 
ylab("Vibrio cholerae (value × 10^3 cfu/ml)")


ggplot(df, aes(1, E.Coli, fill = Season, color = Season)) +
geom_rain(alpha = .5, rain.side = 'r',
boxplot.args = list(color = "black", outlier.shape = NA),
boxplot.args.pos = list(
position = ggpp::position_dodgenudge(x = .1), width = 0.1
)) +
theme_classic() +
scale_fill_brewer(palette = 'Dark2') +
scale_color_brewer(palette = 'Dark2')  +
theme(axis.text=element_text(size=12, face = "bold"),
axis.title=element_text(size=14,face="bold"), 
axis.text.x=element_text(size=10, face = "bold"),
axis.text.y=element_text(size=10, face = "bold"))+
xlab("(a)") + 
ylab("Escherichia coli (value× 10^2 cfu/100ml)")
