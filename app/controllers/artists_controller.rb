class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    # byebug
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])

    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.update(name: params[:artist][:name], bio: params[:artist][:bio])

    redirect_to artist_path(@artist)
  end

end
