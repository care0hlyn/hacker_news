class VotesController < ApplicationController

  def create
    @link = Link.find(params[:id])
    @vote = @link.vote.new
    if @vote.save
      flash[:notice] = "Link upvoted!"
      redirect_to :back
    else
      flash
  end

end


# Use incremental counter for votes?
