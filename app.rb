require 'sinatra'


get '/' do
  erb :index
end


get '/placeholder/?:width?/?:height?' do
  images = ['morty.jpg', 'rick.jpg', 'rickandmorty.png', 'rickandmorty2.png', 'rickandmorty3.jpg']
  placeholders = images.sample
  width = "#{width}"
  height = "#{height}"

  if params['width']
    erb :placeholder_resize, :locals => {
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
