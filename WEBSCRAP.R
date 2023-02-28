# IMPORTING LIBRARIES
library(rvest)
library(dplyr)

# SCRAPPING WEBSITE
link <- "https://gaana.com/playlist/gaana-dj-hindi-top-50-1"

# ALLOWABILITY
#path = paths_allowed(link)

# HTML ELEMENTS FROM WEBSITE
web <- read_html(link)

# SEGREGATING NAME
name <- web %>% html_nodes(".name") %>% html_text()

# VIEWING NAME LIST
View(name)

RAM <- web %>% html_nodes("._plyCr .t_over") %>% html_text()

# VIEWING YEAR LIST
View(RAM)

# SEGREGATING DURATION
price <- web %>% html_nodes("._dur.sm-hide span") %>% html_text()

# VIEWING RATING LIST
View(price)

mobiles <- data.frame(name , RAM ,price)

View(mobiles)

write.csv(mobiles,"my mobiles data.csv")