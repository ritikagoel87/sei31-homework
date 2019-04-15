require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'
require 'pry'

get '/' do
  erb :home
end

get '/result' do
  @title = params[:title].chomp.to_s

  @url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ @title }"
  @info = HTTParty.get @url;

  redirect to('/') if @info.nil?

  @book_cover = @info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
  @book_title = @info["items"][0]["volumeInfo"]["title"]
  @book_authors = @info["items"][0]["volumeInfo"]["authors"].join(", ")
  @previewLink = @info["items"][0]["volumeInfo"]["previewLink"]

  erb :result
end
