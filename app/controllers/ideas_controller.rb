class IdeasController < ApplicationController
  include RolesHelper
  before_action :ensure_authenticated,    only: [:new, :create, :edit, :update]
  before_action :load_idea,               only: [:edit, :update]
  before_action :authorize_to_edit_idea,  only: [:edit, :update]

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
    if defined?(user) == false
      logger.info("exist user false")
      user = User.find(params[:id])
    end
    logger.info("User id #{user.id}")
    @idea = Idea.new(idea_resource_params)
    if (@idea.photo_url.length == 0 || !@idea.photo_url)
      logger.info("photo_url #{@idea.photo_url}")
      @idea.photo_url = 'turtle.jpg'
    end
    logger.info("photo_url #{@idea.photo_url}")
    @idea.user_id = user.id
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
  end

  def update
    if(@idea.update(idea_resource_params))
      redirect_to(ideas_path)
    else
      render 'edit'
    end
  end

  private

  def load_idea
    @idea = Idea.find(params[:id])
    logger.info("Idea id #{@idea.id}")
  end

  def authorize_to_edit_idea
    redirect_to account_path unless(can_edit?(@idea))
  end

  def idea_resource_params
    params.require(:idea).permit(:title, :description, :photo_url, :done_count).with_defaults({photo_url: 'turtle.jpg'})
  end

end
