class ShowingsController < ApplicationController
    def new
        @showing = Showing.new
    end
    def create
        @showing = Showing.new(showing_params)
        if @showing.save
            redirect_to movie_path(@showing.movie_id)
        end
    end
    private
    def showing_params
        params.require(:showing).permit(:time,:date,:movie_id)
    end
end