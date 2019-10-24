class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    def new
        @movie = Movie.new
    end

    def show
        @date = DateTime.now
        @movie = Movie.find(params[:id])
        @comments = @movie.comments.all
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)
        redirect_to movies_path
    end

    def create
        @movie = Movie.new(movie_params)
        @movie.save
        redirect_to movies_path
    end
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_path
    end
    private
    def movie_params
        params.require(:movie).permit(:title, :director, :duration, :description)
    end
end