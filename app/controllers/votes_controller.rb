class VotesController < ApplicationController

  def create
    @link = Link.find(params[:id])
    @vote = Vote.new(params[:vote])
    if @vote.save
      flash[:notice] = "Link upvoted!"
      redirect_to :back
    else
      flash[:alert] = ":("
    end
  end
end


# Use incremental counter for votes?
