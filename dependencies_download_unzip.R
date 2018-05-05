#Downloading and unzipping the files needed in the example

URL <- "http://static.lib.virginia.edu/statlab/materials/data/stocks.zip"
download.file(url = URL, destfile = basename(URL))
unzip(basename(URL))
