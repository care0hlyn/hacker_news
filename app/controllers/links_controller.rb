class LinksController < ApplicationController

  def index
    @links = Link.all
    @vote = Vote.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = "#{@link.description} has been created."
      redirect_to links_path
    else
      render 'new'
    end
  end

  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
    @comments = @link.comments.all
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(params[:link])
      flash[:notice] = "#{@link.description} has been updated."
      redirect_to links_path
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    flash[:notice] = "Link has been deleted."
    redirect_to links_path
  end
end
