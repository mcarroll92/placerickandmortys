# 07 - Files & Redirects
require 'sinatra'

# images = ['morty.jpg', 'rick.jpg']
# placeholders = images.sample

get '/' do
  erb :index
end


get '/placeholder/?:width?/?:height?' do
  images = ['morty.jpg', 'rick.jpg', 'rickandmorty.png', 'rickandmorty2.png', 'rickandmorty3.jpg']
  placeholders = images.sample
  width = ['width']
  height = ['height']

  if params['width']['height']

    erb :placeholder, :locals => {
      :placeholders => placeholders,
      :width => width,
      :height => height
      }

  else
    erb :placeholder, :locals => {
      :placeholders => placeholders
    }
  end
end

# get '/placeholder/:width/:height' do |w, h|
#   width = "#{w}"
#   height = "#{h}"
#
#
#   erb :placeholder_resize, :locals => {
#     :width => width
#     :height => height
# }
#
# end
