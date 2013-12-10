class AlbumsController < ApplicationController

  before_filter :admin_required, except: [:index, :show]

  def new 
    @album = Album.new
  end

  def create
    @album = Album.create(albums_params)
    redirect_to albums_path
  end

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end
  
  def update
    @album = Album.find(params[:id])
    @album.update_attributes(albums_params)
    redirect_to new_photo_path
  end

  def edit
    @album = Album.find(params[:id])
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end

  private

  def albums_params
    params.require(:album).permit(:name, :description, :image)
  end 
end

