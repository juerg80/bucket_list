class IdeasController < ApplicationController

  def index
    @search_term = params[:q]
    logger.info("The search term is #{@search_term}")
    @ideas = Idea.search(@search_term)
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def create
    new_idea = Idea.new(idea_resource_params)
    new_idea.save!
    redirect_to ideas_path
  end

  def new
    @idea = Idea.new
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    my_idea = Idea.find(params[:id])
    my_idea.update(idea_resource_params)
    redirect_to account_ideas_path
  end

  private

  def idea_resource_params
    params.require(:idea).permit(:title, :description, :photo_url, :done_count)
  end

end
