class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = "Comment posted"
      redirect_to :back
    else
      flash[:alert] = "Comment cannot be blank."
      redirect_to :back
    end
  end



end
