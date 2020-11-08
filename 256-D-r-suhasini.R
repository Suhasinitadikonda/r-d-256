# install.packages("rvest")
# install.packages("dplyr")

library(rvest)
library(dplyr)

link = "https://www.marvel.com/characters"
page = read_html(link)

characters = page %>% html_nodes(".card-body__headline") %>% html_text()
marvelcharacters = data.frame(characters,stringsAsFactors = FALSE)

