require 'sinatra'
require 'sinatra/reloader'
require 'csv'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get '/articles' do
  # @articles = CSV.read("links.csv")
  @articles = []
  CSV.foreach("links.csv", headers: true, header_converters: :symbol) do |row|
    @articles << row

  end

  erb :articles
end

get '/articles/new' do
  erb :new
end


post '/articles/new' do
  article_title = params["article_title"]
  url = params["link"]
  description = params["description"]


  article = [article_title, url, description]

  CSV.open("links.csv", "a") do |csv|
    csv.puts(article)

  end
  redirect "/articles"
end
