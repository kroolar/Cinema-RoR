class AdminController < ApplicationController
    def index
        @movies = Movie.all
    end
end