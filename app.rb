require 'sinatra'


get '/' do
  erb :index
end


get '/placeholder/?:width?/?:height?' do |w, h|
  images = ['morty.jpg', 'rick.jpg', 'rickandmorty.png', 'rickandmorty2.png', 'rickandmorty3.jpg']
  placeholders = images.sample
  width = "#{w}"
  height = "#{h}"

  if params['width']
    erb :placeholder_resize, :locals => {
      :placeholders => placeholders,
      :width => width,
      :height => height
    }

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
