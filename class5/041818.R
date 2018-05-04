# Bioinformatics Class 5
# Plots

x <- rnorm(1000,0)

summary(x)

# let's see this data a graph
boxplot(x)
hist(x)


# Section 1 from lab sheet
baby <- read.table("bggn213_05_rstats/weight_chart.txt", header = T)
plot(baby, type = "b", pch = 19, cex = 0.5, lwd = 0.5, ylim=c(2,10), xlab="Age (months)", ylab="Weight (kg)" )

# Section 1B
feat <- read.table("bggn213_05_rstats/feature_counts.txt", sep = "\t", header = T)

par(mar = c(5,11,4,2))
barplot(feat$Count, names.arg = feat$Feature, horiz = T, las = 2)

# Section 2
rawr <- read.delim("bggn213_05_rstats/male_female_counts.txt")

barplot(rawr$Count, col = "000000")

#Expression analysis
palette(c("red", "black", "blue"))
booty <- read.delim("bggn213_05_rstats/up_down_expression.txt")
plot(booty$Condition1, booty$Condition2, col=booty$State, cex=0.5, pch=19)
table(booty$State)
