class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    redirect_to @artist
  end

  def show
    # byebug
    @artist = find_artist(params[:id])
  end

  def edit
    @artist = find_artist(params[:id])
  end

  def update
    @artist = find_artist(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to @artist
  end

  private

    def find_artist(id)
      Artist.find(id)
    end

    def artist_params(*args)
      params.require(:artist).permit(*args)
    end

end
