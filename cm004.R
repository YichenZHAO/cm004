# Sept.15. 
## get the Gapminder data
gDat <- read.delim("gapminderDataFiveYear.txt")
## Prof Screwed up that file???



gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(file=gdURL)

str(gDat) ##useful for data frame
head(gDat)
tail(gDat)
gDat

names(gDat) ##show names of all variables
dim(gDat) ##dimension of the data
length(gDat) ##number of variables (columns)
nrow(gDat)
ncol(gDat)

list(gDat) ##list allows both categorical and numerical data

summary(gDat) ##statistical summaries for each variable

subset(gDat, country == "Luxembourg")

##"lifeExp" ~ "year"
plot(lifeExp ~ year, gDat) ##this is better than the cade below
plot(gDat[,5] ~ gDat[,2]) 

plot(lifeExp ~ gdpPercap, gDat)

plot(lifeExp ~ log(gdpPercap), gDat)

gDat$lifeExp
str(gDat$lifeExp)
summary(gDat$lifeExp)
hist(gDat$lifeExp)

gDat$continent
class(gDat$continent)
str(gDat$continent) ##factor is stored as positive integers: it is like a mapping. "Levels": 1-Africa, 2-Americas, ...etc.
levels(gDat$continent)
nlevels(gDat$continent)
table(gDat$continent)
barplot(table(gDat$continent))
