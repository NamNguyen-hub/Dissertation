library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))
getwd()

#bookdown::render_book('index.Rmd', "bookdown::pdf_document2", new_session = T)
bookdown::render_book("index.Rmd", "bookdown::pdf_book", new_session = T)
#bookdown::render_book("index.Rmd", "bookdown::pdf_book")

bookdown::render_book("index.Rmd", "bookdown::word_document2", new_session = T)


path <- "docs/nnguyen_dissertation.pdf"
system(paste0('open "', path, '"'))

page = 3
path <- paste0(getwd(),"/_book/_main.pdf")
system(paste0('osascript gotopage.scpt "', path, '" ', page))
