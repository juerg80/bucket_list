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
    new_idea = Idea.new(params)
    new_idea.save!
    redirect_to ideas_index_path
  end

  def new
  end

  def edit
    id = params[:id]
    @idea = Idea.find(id)
  end

  def update
    my_idea = Idea.find(params[:id])
    my_idea.update(params)
    redirect_to account_ideas_path
  end

end
