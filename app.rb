# 07 - Files & Redirects
require 'sinatra'

# images = ['morty.jpg', 'rick.jpg']
# placeholders = images.sample

get '/' do
  erb :index
end

get '/placeholder' do
  images = ['morty.jpg', 'rick.jpg']
  placeholders = images.sample

  erb :placeholder, :locals => {
    :placeholders => placeholders
}
end
