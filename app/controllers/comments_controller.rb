class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to movie_path(@comment.movie_id)
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:author, :body, :movie_id, :rate)
    end
    def movie_id
        params.require(:comment).permit(:movie_id)
    end
end
