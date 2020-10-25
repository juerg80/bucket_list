class IdeasController < ApplicationController

  def index
    @search_term = params[:q]
    logger.info("The search term is #{@search_term}")
    @ideas = Idea.all
  end

  def create
    new_idea = Idea.new
    new_idea.title = params[:title]
    new_idea.save!
    redirect_to ideas_index_path
  end

  def new
  end

end
