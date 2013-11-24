class PhotosController < ApplicationController

  before_filter :find_photo, only: [:edit, :show, :update, :destroy]

  def edit
  end

  def show
  end

  def update
    @photo.update_attributes(photo_params)
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save!
  end

  def new
    @photo = Photo.new
  end

  def destroy
    @photo.destroy
  end

  private

  def find_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:name, :image, :album)
  end

end
