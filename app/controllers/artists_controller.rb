class ArtistsController < ApplicationController

  def index
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.update(artist_params)
    redirect_to @artist
  end





end

private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
