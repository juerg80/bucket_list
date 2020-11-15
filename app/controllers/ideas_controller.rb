class IdeasController < ApplicationController

  def index
    @search_term = params[:q]
    logger.info("The search term is #{@search_term}")
    @ideas = Idea.search(@search_term)
  end

  def show
    @display_add_comment = session[:user_id].present?
    if(@display_add_comment)
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
    @idea = Idea.find(params[:id])
    @comment = Comment.new
  end

  def create
    user = User.find(session[:user_id])
    @idea = Idea.new(idea_resource_params)
    @idea.user = user
    if(@idea.save)
      redirect_to(ideas_path)
    else
      render 'new'
    end
  end

  def new
    @idea = Idea.new
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if(@idea.update(idea_resource_params))
      redirect_to(ideas_path)
    else
      render 'edit'
    end
  end

  private

  def idea_resource_params
    params.require(:idea).permit(:title, :description, :photo_url, :done_count)
  end

end
