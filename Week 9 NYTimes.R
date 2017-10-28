## Week 9

##ASSIGNMENT
#The New York Times web site provides a rich set of APIs, as described here: http://developer.nytimes.com/docs You’ll need to start by signing up for an API key.
#\n\ The task is to choose one of the New York Times APIs, construct an interface in R to read in the JSON data, and transform it to an R dataframe.
#\n\ I chose the "Article Search API" and queried articles writted about motorcycles since I recently got my motorcycle license. 

##LOAD LIBRARIES
suppressMessages(suppressWarnings(library(RCurl)))
suppressMessages(suppressWarnings(library(jsonlite)))
suppressMessages(suppressWarnings(library(tidyr)))
suppressMessages(suppressWarnings(library(dplyr)))
suppressMessages(suppressWarnings(library(ggplot2)))
suppressMessages(suppressWarnings(library(DT)))
suppressMessages(suppressWarnings(library(tidyjson)))

##DATA COLLECTION
##Define the API key, search criteria, and the website to be used for data collection.
api_key <- '&api-key=fce90863096a4e99bebb64b7daded8e9'
search_word <- 'motorcycle'
nyt_url <- 'https://api.nytimes.com/svc/search/v2/articlesearch.json?q='
  
##Retrieve data from NYT
query <- getURL(paste0(nyt_url, search_word, api_key))
json_nyt <- fromJSON(query)
json_nyt_df <- data.frame(json_nyt)
json_nyt_df
