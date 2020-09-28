class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save

        redirect_to genre_path(@genre)
    end

    def edit 
        @genre = Genre.find_by(id: params[:id])
        redirect_to genre_path(@genre)
    end

    private
    def genre_params
        params.require(:genre).permit(:name)
    end

end
