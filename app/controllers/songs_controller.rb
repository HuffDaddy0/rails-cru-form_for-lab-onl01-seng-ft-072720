class SongsController < ApplicationController
    def index
        @songs = Song.all

    end

    def new
        @song = Song.new
        
    end

    def create
        @song = Song.create(song_params)
        @song.save
    end

    def edit 
        @song = Song.find_by(id: params[:id])
    end

    private
    def song_params
        params.require(:songs).permit(:name, :genre, :artist)
    end

end
