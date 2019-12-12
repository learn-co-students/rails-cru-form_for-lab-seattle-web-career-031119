class SongsController < ApplicationController


    before_action :set_song, only:[:show, :edit, :update]
    before_action :set_dummy, only:[:new]


    def index
      @songs = Song.all
    end

    def show
    end

    def new
    end

    def create
      @song = Song.create(song_params)
      redirect_to song_path(@song)
    end

    def edit
    end

    def update
      @song.update(song_params)
      redirect_to song_path(@song)
    end


    #SETTERS
    def set_song
      @song = Song.find(params[:id])
    end

    def set_dummy
      @song = Song.new
    end

    private
    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
