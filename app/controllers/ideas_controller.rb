class IdeasController < ApplicationController
  include RolesHelper
  before_action :ensure_authenticated, only: [:new, :create, :edit, :update]
  before_action :load_idea,            only: [:edit, :update]
  before_action :idea_resource_params, only: [:edit, :update]

  def index
    @search_term = params[:q]
    logger.info("The search term is #{@search_term}")
    @ideas = Idea.search(@search_term)
  end

  def show
    @idea = Idea.find(params[:id])
    @comment = Comment.new
    @display_add_comment = session[:user_id].present?
    if(@display_add_comment)
      @user = User.find(session[:user_id])
      @disable_add_goal = @user.goals.exists?(@idea.id)
    else
      @user = nil
    end
  end

  def create
    user = User.find(session[:user_id])
    @idea = Idea.new(idea_resource_params)
    @idea.users << user
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

  def load_idea
    @idea = Idea.find(params[:id])
  end

  def authorize_to_edit_idea
    redirect_to account_path unless(can_edit?(@idea))
  end

  def idea_resource_params
    params.require(:idea).permit(:title, :description, :photo_url, :done_count)
  end

end
