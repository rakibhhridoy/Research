library(ggpubr)
library(cowplot)

hinormA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/hinormA.csv")
hilogA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/hilogA.csv")
crnormA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/crnormA.csv")
crlogA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/crlogA.csv")
hinormA

gghistogram(
  hinormA, x = "Values", y = "..density..",
  add = "mean", rug = TRUE,
  fill = "label", palette = c("#00AFBB", "#E7B800"),
  add_density = TRUE
)


phist <- gghistogram(
  hinormA, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "label", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "HI Adult")+
  ylab("Frequency")
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  hinormA, x = "Values",
  color= "label", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  labs("")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


log_normalWAhi <- read.csv("/home/RHHLab/Research/Buriganga/monteData/log_normalhiWA.csv")
log_normalSAhi <- read.csv("/home/RHHLab/Research/Buriganga/monteData/log_normalhiSA.csv")
log_normalWAcr <- read.csv("/home/RHHLab/Research/Buriganga/monteData/log_normalcrWA.csv")
log_normalSAcr <- read.csv("/home/RHHLab/Research/Buriganga/monteData/log_normalcrSA.csv")
log_normalWAhi
phist <- gghistogram(
  log_normalWAhi, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Legend", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "HI Adult Winter")+
  ylab("Frequency")
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  log_normalWAhi, x = "Values",
  color= "Legend", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


hiSeasonal <- read.csv("/home/RHHLab/Research/Buriganga/monteData/hiSeasonal.csv")
crSeasonal <- read.csv("/home/RHHLab/Research/Buriganga/monteData/crSeasonal.csv")
phist <- gghistogram(
  hiSeasonal, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Seasons", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "HI Adult Winter")+
  ylab("Frequency")
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  hiSeasonal, x = "Values",
  color= "Seasons", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


phist <- gghistogram(
  crSeasonal, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Seasons", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "CR Adult Winter")+
  ylab("Frequency")
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  crSeasonal, x = "Values",
  color= "Seasons", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


hiWA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/hiA_orig.csv")
crWA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/crA_orig.csv")
phist <- gghistogram(
  hiWA, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Seasons", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "HI Adult")+
  ylab("Frequency")
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  hiWA, x = "Values",
  color= "Seasons", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


?xlab()
adultHI <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/hiA_orig36.csv")
adultCR <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/crA_orig36.csv")
childHI <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/hiA_origC83.csv")
childCR <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/crA_origC83.csv")
adultHI
mean(adultHI$Values[1:10000])
phist <- gghistogram(
  adultHI, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Seasons", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "(a) HI Adult")+
  ylab("Frequency")+
  theme(text = element_text(size = 30, face="bold"))
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  adultHI, x = "Values",
  color= "Seasons", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")+
  theme(text = element_text(size = 30 ,face="bold"), axis.text = element_text(size = 30))
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


phist <- gghistogram(
  adultCR, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Seasons", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "(c) CR Adult")+
  ylab("Frequency")+
  theme(text = element_text(size = 30, face="bold"))
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  adultCR, x = "Values",
  color= "Seasons", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")+
  theme(text = element_text(size = 30 ,face="bold"), axis.text = element_text(size = 30))
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


phist <- gghistogram(
  childCR, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Seasons", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "(d) CR Child")+
  ylab("Frequency")+
  theme(text = element_text(size = 30, face="bold"))
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  childCR, x = "Values",
  color= "Seasons", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")+
  theme(text = element_text(size = 30 ,face="bold"), axis.text = element_text(size = 30))
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


phist <- gghistogram(
  childHI, x = "Values", 
  add = "mean", rug = TRUE, bins = 100,
  fill = "Seasons", palette = c("#00AFBB", "#E7B800")
)+
  xlab(label = "(b) HI Child")+
  ylab("Frequency")+
  theme(text = element_text(size = 30, face="bold"))
# 2. Create the density plot with y-axis on the right
# Remove x axis elements
pdensity <- ggdensity(
  childHI, x = "Values",
  color= "Seasons", palette = c("#00AFBB", "#E7B800"),
  alpha = 0
) +
  ylab("Density")+
  scale_y_continuous(expand = expansion(mult = c(0, 0.05)), position = "right")  +
  theme_half_open(11, rel_small = 1) +
  rremove("x.axis")+
  rremove("xlab") +
  rremove("x.text") +
  rremove("x.ticks") +
  rremove("legend")+
  theme(text = element_text(size = 30 ,face="bold"), axis.text = element_text(size = 30))
# 3. Align the two plots and then overlay them.
aligned_plots <- align_plots(phist, pdensity, align="hv", axis="tblr")
ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])


perHiA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/percent_HiA.csv")
perHiC <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/percent_HiC.csv")
percrA <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/percent_crA.csv")
percrC <- read.csv("/home/RHHLab/Research/Buriganga/monteData/simul/percent_crC.csv")
perHiA
ggplot(data=perHiA,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Hg", "Cd", "As", "Zn", "Cu", "Ni", "Mn", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percent", y = "", title = "(a) Sensitivity HI Adult")+
  theme(legend.position = "none")
ggplot(data=perHiC,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Hg", "Cd", "As", "Zn", "Cu", "Ni", "Mn", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percent", y = "", title = "(b) Sensitivity HI Child")

ggplot(data=percrA,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Cd", "As", "Ni", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percent", y = "", title = "(c) Sensitivity CR Adult")+
  theme(legend.position = "none")

ggplot(data=percrC,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Cd", "As", "Ni", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percent", y = "", title = "(d) Sensitivity CR Child")

percrA
ggplot(data=perHiA,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Hg", "Cd", "As", "Zn", "Cu", "Ni", "Mn", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percent", y = "", title = "(a) Sensitivity HI Adult")+
  theme(legend.position = "none")+
  annotate("text", x= 11, y = 9.2, label = paste0(round(perHiA$percent[2],2), " %"), size = 3)+
  annotate("text", x= 9.3, y = 8.77, label = paste0(round(perHiA$percent[11],2), " %"), size = 3)+
  annotate("text", x= 6, y = 8.2, label = round(perHiA$percent[1],2), size = 3)+
  annotate("text", x= 5.4, y = 7.7, label = round(perHiA$percent[10],2), size = 3)+
  annotate("text", x= 4, y = 7.1, label = round(perHiA$percent[3],2), size = 3)+
  annotate("text", x= 4, y = 6.7, label = round(perHiA$percent[12],2), size = 3)+
  annotate("text", x= 4.2, y = 6.15, label = round(perHiA$percent[4],2), size = 3)+
  annotate("text", x= 4.2, y = 5.8, label = round(perHiA$percent[13],2), size = 3)+
  annotate("text", x= 3, y = 5.2, label = round(perHiA$percent[5],2), size = 3)+
  annotate("text", x= 3, y = 4.8, label = round(perHiA$percent[14],2), size = 3)+
  annotate("text", x= 15.5, y = 4.3, label = round(perHiA$percent[6],2), size = 3)+
  annotate("text", x= 13.5, y = 3.75, label = round(perHiA$percent[15],2), size = 3)+
  annotate("text", x= 55, y = 3.3, label = round(perHiA$percent[7],2), size = 3)+
  annotate("text", x= 50, y = 2.8, label = round(perHiA$percent[16],2), size = 3)+
  annotate("text", x= 20, y = 2.25, label = round(perHiA$percent[8],2), size = 3)+
  annotate("text", x= 28.5, y = 1.8, label = round(perHiA$percent[17],2), size = 3)+
  annotate("text", x= 12, y = 1.25, label = round(perHiA$percent[9],2), size = 3)+
  annotate("text", x= 13, y = .7, label = round(perHiA$percent[18],2), size = 3)

ggplot(data=perHiA,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Hg", "Cd", "As", "Zn", "Cu", "Ni", "Mn", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percentage", y = "", title = "(a) Sensitivity HI Adult")+
  theme(legend.position = "none")+
  annotate("text", x= 11, y = 9.2, label = round(perHiA$percent[2],2), size = 3)+
  annotate("text", x= 9.3, y = 8.77, label = round(perHiA$percent[11],2), size = 3)+
  annotate("text", x= 6, y = 8.2, label = round(perHiA$percent[1],2), size = 3)+
  annotate("text", x= 5.4, y = 7.7, label = round(perHiA$percent[10],2), size = 3)+
  annotate("text", x= 4, y = 7.1, label = round(perHiA$percent[3],2), size = 3)+
  annotate("text", x= 4, y = 6.7, label = round(perHiA$percent[12],2), size = 3)+
  annotate("text", x= 4.2, y = 6.15, label = round(perHiA$percent[4],2), size = 3)+
  annotate("text", x= 4.2, y = 5.8, label = round(perHiA$percent[13],2), size = 3)+
  annotate("text", x= 3, y = 5.2, label = round(perHiA$percent[5],2), size = 3)+
  annotate("text", x= 3, y = 4.8, label = round(perHiA$percent[14],2), size = 3)+
  annotate("text", x= 15.5, y = 4.3, label = round(perHiA$percent[6],2), size = 3)+
  annotate("text", x= 13.5, y = 3.75, label = round(perHiA$percent[15],2), size = 3)+
  annotate("text", x= 55, y = 3.3, label = round(perHiA$percent[7],2), size = 3)+
  annotate("text", x= 50, y = 2.8, label = round(perHiA$percent[16],2), size = 3)+
  annotate("text", x= 20, y = 2.25, label = round(perHiA$percent[8],2), size = 3)+
  annotate("text", x= 28.5, y = 1.8, label = round(perHiA$percent[17],2), size = 3)+
  annotate("text", x= 12, y = 1.25, label = round(perHiA$percent[9],2), size = 3)+
  annotate("text", x= 13, y = .7, label = round(perHiA$percent[18],2), size = 3)

ggplot(data=perHiC,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Hg", "Cd", "As", "Zn", "Cu", "Ni", "Mn", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percentage", y = "", title = "(b) Sensitivity HI Child")+
  theme(legend.position = "none")+
  annotate("text", x= 9, y = 9.2, label = round(perHiC$percent[2],2), size = 3)+
  annotate("text", x= 8.5, y = 8.77, label = round(perHiC$percent[11],2), size = 3)+
  annotate("text", x= 6, y = 8.2, label = round(perHiC$percent[1],2), size = 3)+
  annotate("text", x= 5.4, y = 7.7, label = round(perHiC$percent[10],2), size = 3)+
  annotate("text", x= 3.5, y = 7.1, label = round(perHiC$percent[3],2), size = 3)+
  annotate("text", x= 3.5, y = 6.7, label = round(perHiC$percent[12],2), size = 3)+
  annotate("text", x= 4.2, y = 6.15, label = round(perHiC$percent[4],2), size = 3)+
  annotate("text", x= 4.2, y = 5.8, label = round(perHiC$percent[13],2), size = 3)+
  annotate("text", x= 3, y = 5.2, label = round(perHiC$percent[5],2), size = 3)+
  annotate("text", x= 3, y = 4.8, label = round(perHiC$percent[14],2), size = 3)+
  annotate("text", x= 15, y = 4.3, label = round(perHiC$percent[6],2), size = 3)+
  annotate("text", x= 12.5, y = 3.75, label = round(perHiC$percent[15],2), size = 3)+
  annotate("text", x= 57, y = 3.3, label = round(perHiC$percent[7],2), size = 3)+
  annotate("text", x= 52, y = 2.8, label = round(perHiC$percent[16],2), size = 3)+
  annotate("text", x= 19, y = 2.25, label = round(perHiC$percent[8],2), size = 3)+
  annotate("text", x= 27.5, y = 1.8, label = round(perHiC$percent[17],2), size = 3)+
  annotate("text", x= 10.3, y = 1.25, label = round(perHiC$percent[9],2), size = 3)+
  annotate("text", x= 12, y = .7, label = round(perHiC$percent[18],2), size = 3)
ggplot(data=percrA,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Cd", "As", "Ni", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percentage", y = "", title = "(c) Sensitivity CR Adult")+
  theme(legend.position = "none")+
  annotate("text", x= 23, y = 5.2, label = round(percrA$percent[1],2), size = 3)+
  annotate("text", x= 23, y = 4.8, label = round(percrA$percent[6],2), size = 3)+
  annotate("text", x= 56.5, y = 4.2, label = round(percrA$percent[2],2), size = 3)+
  annotate("text", x= 55, y = 3.75, label = round(percrA$percent[7],2), size = 3)+
  annotate("text", x= 13.5, y = 3.2, label = round(percrA$percent[3],2), size = 3)+
  annotate("text", x= 13.7, y = 2.8, label = round(percrA$percent[8],2), size = 3)+
  annotate("text", x= 20.2, y = 2.2, label = round(percrA$percent[4],2), size = 3)+
  annotate("text", x= 22.2, y = 1.8, label = round(percrA$percent[9],2), size = 3)+
  annotate("text", x= 3, y = 1.2, label = round(percrA$percent[5],2), size = 3)+
  annotate("text", x= 3.5, y = .8, label = round(percrA$percent[10],2), size = 3)
ggplot(data=percrC,
       aes(x=percent, y=metals,
           fill=Seasons))+
  geom_bar(stat="identity",
           position="dodge")+
  scale_y_discrete(limits = c("Pb", "Cd", "As", "Ni", "Cr"))+
  removeGrid()+
  theme_classic2()+
  theme(axis.text.x = element_text(face = "bold", size = 15),
        axis.text.y = element_text(face = "bold", size = 15),
        text = element_text(size = 20, face = "bold"))+
  xlim(0, 100)+
  labs(x= "Percentage", y = "", title = "(d) Sensitivity CR Child")+
  theme(legend.position = "none")+
  annotate("text", x= 23, y = 5.2, label = round(percrC$percent[1],2), size = 3)+
  annotate("text", x= 23, y = 4.8, label = round(percrC$percent[6],2), size = 3)+
  annotate("text", x= 56.5, y = 4.2, label = round(percrC$percent[2],2), size = 3)+
  annotate("text", x= 55, y = 3.75, label = round(percrC$percent[7],2), size = 3)+
  annotate("text", x= 13.5, y = 3.2, label = round(percrC$percent[3],2), size = 3)+
  annotate("text", x= 13.7, y = 2.8, label = round(percrC$percent[8],2), size = 3)+
  annotate("text", x= 20.2, y = 2.2, label = round(percrC$percent[4],2), size = 3)+
  annotate("text", x= 22.2, y = 1.8, label = round(percrC$percent[9],2), size = 3)+
  annotate("text", x= 3, y = 1.2, label = round(percrC$percent[5],2), size = 3)+
  annotate("text", x= 3.5, y = .8, label = round(percrC$percent[10],2), size = 3)