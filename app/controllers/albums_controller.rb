class AlbumsController < ApplicationController
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
  end

  def edit
    @album = Album.find(params[:id])
  end

  private

  def albums_params
    params.require(:album).permit(:name, :description)
  end 
end

