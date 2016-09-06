require 'sinatra'
require 'dragonfly'


Dragonfly.app.configure do
  plugin :imagemagick
end


get '/' do
  erb :index
end


get '/placeholder?/?' do
  images = Dir.entries("public/images")
  # Temporary loop to delete ./ and ../ from array whilst I build helper module 
    2.times do
      images.delete_at(0)
    end
  placeholders = images.sample


  erb :placeholder, :locals => {
    :placeholders => placeholders
  }
end

# get '/placeholder/:width?/?' do
#   redirect '/placeholder/?:width?/?:height?', 301
# end

get '/placeholder/?:width?/?:height?' do |w, h|
  images = Dir.entries("public/images")
    3.times do
      images.delete_at(0)
    end
  placeholders = images.sample
  path = 'public/images/' + placeholders
  dim = w + 'x' + h + '#'
  Dragonfly.app.fetch_file(path).thumb(dim).to_response(env)

  # erb :placeholder, :locals => {
  #   :placeholders => placeholders
  # }
  end
