df <- read.csv("/home/RHHLab/Research/DhaleshwariFish/Python/data/transformedData.csv")
df
res.aov3 <- aov(Values ~ Parameter * Fish, data = df)
res.aov3 <- aov(Values ~ Parameter + Fish + Parameter:Fish, data = df)
summary(res.aov3)