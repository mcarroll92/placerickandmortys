# 07 - Files & Redirects
require 'sinatra'


get '/' do
   erb :index
end

get '/placeholder' do

  placeholders = ['morty.jpg', 'rick.jpg']
  return placeholders.sample

end
