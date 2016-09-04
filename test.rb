# require 'MiniMagick'
#
# image = MiniMagick::Image.open("1U4LYmp.jpg")
# image.path #=> "1U4LYmp.jpg"
# image.resize "200x300"
# image.format "png"
# image.write "output.png"


require 'dragonfly'

Dragonfly.app.configure do
  plugin :imagemagick
end


image = ['1U4LYmp.jpg']

image.thumb('500x500#')
