library(rvest)
library(dplyr)
html <-  read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
rank <- html %>% html_elements(".countdown-index") %>% html_text()

name <- html %>% html_elements(".article_movie_title a") %>% html_text() 
score <- html %>% html_elements(".tMeterScore") %>% html_text()
year <- html %>% html_elements(".subtle.start-year") %>% html_text()


html <- read_html("https://en.wikipedia.org/wiki/United_States_at_the_Olympics")
table <- html_table(html)
table <- table[[8]]
table

html <- read_html("https://stats.stackexchange.com/questions?tab=Votes")
ques.name <- html %>% html_elements(".s-post-summary--content-title") %>% html_text()

ques.name %>% filter(!is."\r\n")

ques.mname <- gsub("\r\n","",ques.name)
ques.name <- trimws(ques.name)

views <- html %>% html_elements(".s-post-summary--stats-item-number") %>% html_text()

views <- views[seq(from = 3, to = 42, by = 3)]

ans <-  html %>% html_elements(".s-post-summary--stats-item-number") %>% html_text()

ans <- ans[seq(from = 2, to= 44, by = 3)]

votes <-  html %>% html_elements(".s-post-summary--stats-item-number") %>% html_text()
votes <- votes[seq(from = 1,to = 45, by = 3)]

