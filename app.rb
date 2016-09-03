require 'sinatra'
require 'dragonfly'

get '/' do
  erb :index
end


get '/placeholder/?:width?/?:height?' do
  images = Dir.entries("public/images")
  placeholders = images.sample

  if params['width']
    erb :placeholder_resize, :locals => {
      :placeholders => placeholders
    }

  else
    erb :placeholder, :locals => {
      :placeholders => placeholders
    }
  end
end

#  Basic placeholder section - pulls a random image with no resizing.
#
# get '/placeholder' do
#   images = ['morty.jpg', 'rick.jpg', 'rickandmorty.png', 'rickandmorty2.png', 'rickandmorty3.jpg']
#   placeholders = images.sample
#
#   erb :placeholder, :locals => {
#     :placeholders => placeholders
#   }
# end
