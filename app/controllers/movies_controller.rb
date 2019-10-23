class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    def new
        @movie = Movie.new
    end
    def create
        @movie = Movie.new(movie_params)
        @movie.save
        redirect_to movies_path
    end
    def movie_params
        params.require(:movie).permit(:title, :year, :rate)
    end
end