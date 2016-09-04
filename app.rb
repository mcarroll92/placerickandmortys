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
  placeholders = images.sample

  erb :placeholder, :locals => {
    :placeholders => placeholders
  }
end

get '/:image/?:width?/?:height?' do |i, w, h|
  images = Dir.entries("public/images")
  placeholders = images[i.to_i]
  path = 'public/images/' + placeholders
  dim = w + 'x' + h + '#'
  Dragonfly.app.fetch_file(path).thumb(dim).to_response(env)
  end
