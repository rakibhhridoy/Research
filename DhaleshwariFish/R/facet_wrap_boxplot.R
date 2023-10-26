colnames(df)[1] = "y"
colnames(df)[2] = "Metals"
colnames(df)[3] = "Param"
colnames(df)[4] = "Age"
colnames(df)[5] = "ParamAge"
df
library(ggplot2)
bp <- ggplot(df, aes(x=Metals, y=y, group= Metals)) + 
  geom_boxplot(aes(fill=Metals))
bp


bp + facet_grid(. ~ ParamAge)


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge)) + 
  facet_grid(cols = vars(ParamAge))+
  scale_y_continuous(trans='log10')


ggplot(transform(df,
                 ParamAge=factor(ParamAge,levels=c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult","CR Children","CR Adult","TCR Children","TCR Adult")))) + 
  geom_histogram(aes(y))+ facet_grid(ParamAge~.)


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge)) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult","CR Children","CR Adult","TCR Children","TCR Adult")))+
  scale_y_continuous(trans='log10')


df <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/Hi.csv")
df
df <- df[, c(-1)]
colnames(df)[1] = "y"
colnames(df)[2] = "Metals"
colnames(df)[3] = "Param"
colnames(df)[4] = "Age"
colnames(df)[5] = "ParamAge"
df
ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge)) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult")))+
  scale_y_continuous(trans='log10')


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge)) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult")))+
  scale_y_continuous(trans='log10')+
  xlab("")+
  ylab("")+
  theme_light()+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge)) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult")))+
  scale_y_continuous(trans='log10')+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult")))+
  scale_y_continuous(trans='log10')+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult")))+
  scale_y_continuous(trans='log10')+
  scale_x_discrete(limits = c('Cr', 'Mn', 'Fe', 'Co', 'Cu','HI', 'Zn', 'As', 'Se', 'Cd', 'Hg', 'Pb'))+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = Age), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult")))+
  scale_y_continuous(trans='log10')+
  scale_x_discrete(limits = c('Cr', 'Mn', 'Fe', 'Co', 'Cu','HI', 'Zn', 'As', 'Se', 'Cd', 'Hg', 'Pb'))+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


df <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/Hi.csv")
df <- df[, c(-1)]
colnames(df)[1] = "y"
colnames(df)[2] = "Metals"
colnames(df)[3] = "Param"
colnames(df)[4] = "Age"
colnames(df)[5] = "ParamAge"
df
ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("EDI Children","EDI Adult","THQ Children","THQ Adult","HI Children","HI Adult")))+
  scale_y_continuous(trans='log10')+
  scale_x_discrete(limits = c('Cr', 'Mn', 'Fe', 'Co', 'Cu','HI', 'Zn', 'As', 'Se', 'Cd', 'Hg', 'Pb'))+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


df <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/rest.csv")
df
df <- df[, c(-1)]
colnames(df)[1] = "y"
colnames(df)[2] = "Metals"
colnames(df)[3] = "Param"
colnames(df)[4] = "Age"
colnames(df)[5] = "ParamAge"
df
ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("CR Children","CR Adult","TCR Children","TCR Adult")))+
  scale_y_continuous(trans='log10')+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("CR Children","CR Adult","TCR Children","TCR Adult")))+
  scale_y_continuous(trans='log10')+
  scale_x_discrete(limits = c("Cr","Pb","Cd", "TCR", "As"))+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


df <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/rest.csv")
df <- df[, c(-1)]
colnames(df)[1] = "y"
colnames(df)[2] = "Metals"
colnames(df)[3] = "Param"
colnames(df)[4] = "Age"
colnames(df)[5] = "ParamAge"
df
ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("CR Children","CR Adult","TCR Children","TCR Adult")))+
  scale_y_continuous(trans='log10')+
  scale_x_discrete(limits = c("Cr","As","TCR", "Cd", "Pb"))+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))


ggplot(df, aes(x = Metals, y = y)) +        
  geom_boxplot(aes(fill = ParamAge), outlier.size = 1.5) + 
  facet_grid(~factor(ParamAge, levels = c("CR Children","CR Adult","TCR Children","TCR Adult")))+
  scale_y_continuous(trans='log10')+
  scale_x_discrete(limits = c("Cr","As","TCR", "Cd", "Pb"))+
  scale_y_continuous(breaks = c(1e-06,1e-05,1e-04,1e-03,1e-02))+
  xlab("")+
  ylab("")+
  theme_light() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))+
  theme( axis.text = element_text( size = 14, face = "bold" ),
         axis.text.y = element_text(size = 12, face = "bold" ),
         axis.text.x = element_text(size= 12, face = "bold"), 
         legend.position="none",
         strip.text = element_text(size = 12, face = "bold", colour = "black"))
