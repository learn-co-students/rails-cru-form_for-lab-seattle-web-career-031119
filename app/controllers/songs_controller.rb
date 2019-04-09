class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  def show
    # byebug
    @song = find_song(params[:id])
  end

  def edit
    @song = find_song(params[:id])
  end

  def update
    @song = find_song(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  private

    def find_song(id)
      Song.find(id)
    end

    def song_params(*args)
      params.require(:song).permit(*args)
    end

end
