class PhotosController < ApplicationController
 def show 
    @photo = Photo.find(params[:id])

    render  :show
  end

  def index
    @photos = Photo.all

    render  :index
  end

  def create
    @photo = Photo.create(
      name: params[:name],
      length: params[:length],
      width: params[:width]
    )

    render :show
  end


  def update
    @photo = Photo.find(params[:id])

    @photo.update(
      name: params[:name]|| @photo.name,
      length: params[:length] || @photo.length,
      width: params[:width] || @photo.width
    )

    render :show
  end

  def delete
    @photo = Photo.find(params[:id])

    @photo.destroy
  end
  end
