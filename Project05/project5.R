#' ---
#' title: "Week 5 Data Visualization Lab"
#' author: "Haroon Riyaz (PID A15377799)"
#' ---

# Week 5 Data Visualization Lab

# Install ggplot2 package 
# install.packages("ggplot2")


# *Any time I want to use 
# this package I need to load it!*
library(ggplot2)

# View Cars data
View(cars)

# Plot Cars data (base R plot)
plot(cars)

# ggplot graph
# We need data + aes + geoms
ggplot(data = cars) + 
  aes(x=speed, y=dist) +
  geom_point()

# Saves in p
p <- ggplot(data = cars) + 
  aes(x=speed, y=dist) +
  geom_point()

# Add a line geom with geom_line()
p + geom_line()

# Add a trend line close to data
p + geom_smooth()

p + geom_smooth(method="lm")

#----------------------------#

# Read in our drug expression data
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

# *Questions for gene analysis*

# Q. How many genes are in this dataset?
nrow(genes)

# Q. Column names and number of rows?
ncol(genes)
colnames(genes)

# Q. How many up regulated genes there are?
table(genes$State)

# Q. Fraction of genes up-regulated (2 SF)
round((table(genes$State) / nrow(genes)) * 100, 2)

# First plot attempt!
ggplot(data=genes) + 
  aes(x=Condition1, y = Condition2, col=State) + 
  geom_point()

# Add some color
#g + scale_color_manual(values=c("blue","gray","red")) +
#  labs(title = "Gene Expression changes", x="Control (no drug)", y="drug treatment")+
#  theme_bw()


