install.packages('rvest')
library(rvest)

luse <- html('http://www.luse.co.zm/')

stock_names <- luse %>% html_nodes('.tb1 .tr1 .c0') %>% html_text() %>% as.data.frame()
price <- luse %>% html_nodes('.tb1 .tr1 .c1') %>% html_text() %>% as.data.frame()

list1 <- cbind(stock_names, price) 
names(list1) = cbind('Security', 'Price')

list1
