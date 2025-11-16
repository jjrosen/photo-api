class Photo < ApplicationRecord

def show 
  @photo = Photo.find(params :id)

  render  :show
end

def index
  @photos = Photo.all

  render  :index
end



end
