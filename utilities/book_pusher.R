#This script moves the book generated here to my personal website
# repository. 

bookdown::render_book('01_WR418.Rmd','all')


# Mostly copied from this nice blog post: 
#https://amywhiteheadresearch.wordpress.com/2014/11/12/copying-files-with-r/
#get where book lives
current.folder <- paste0(getwd(),'/_book')
#get where book will go
new.folder <-'C:/Users/mrvr/Dropbox/Personal Website/GithubWebsite/wr418'

# find the files that you want
list.of.files <- list.files(current.folder,
                            pattern='html|json',
                            full.names=T)


# copy the files to the new folder
file.copy(list.of.files, new.folder,overwrite = T)


## warning
#libs folder does not get copied leaving the output looking...
#sad! Manually did this for now
