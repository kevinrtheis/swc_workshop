download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")

#head
#str
#colnames
#nrow
#ncol
#dim
#View
#[row,column]

#African countries' life expectancies for 2007
#1 - 2007 data
#2 - African data
#3 - pull 2007 & Africa from gapminder
is_2007 <- gapminder$year == 2007
is_africa <- gapminder$continent =="Africa"
africa_2007 <- gapminder[is_2007 & is_africa, c("country", "lifeExp")]

#now order it by lifeExp
o <- order(africa_2007$lifeExp)
africa_2007[o, ]

#graphics
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) + geom_point()

ggplot(data=gapminder, aes(x=year, y=lifeExp)) + geom_point()
#add color
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=continent)) + geom_point()
#line
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line ()
#points and lines
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line () + geom_point ()
#size
ggplot(data=gapminder, aes(x=year, y=lifeExp, size=gdpPercap, by=country, color=continent)) + geom_line ()+ geom_point ()
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line (color="black")+ geom_point (aes(size=gdpPercap))

#lifeExp by dgp, colored by continent, 
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent)) + geom_point(aes(size=pop))

