class PhotosController < ApplicationController

  before_filter :find_photo, except: [:new, :create]
  before_filter :find_album, except: [:new, :show]
  before_filter :admin_required, except: [:show]

  def edit
  end

  def show
  end

  def update
    @photo.update_attributes(photo_params)
  end

  def create
    @photo = @album.photos.new(photo_params)
    @photo.save!
    redirect_to new_photo_url
  end

  def new
    @photo = Photo.new
  end

  def destroy
    @photo.destroy
    redirect_to @photo.album
  end

  private

  def find_photo
    @photo = Photo.find(params[:id])
  end

  def find_album
    find_photo.album
  end

  def photo_params
    params.require(:photo).permit(:name, :image)
  end

end
