class AccountController < ApplicationController
  before_action :ensure_authenticated

  def ideas
    user_id = session[:user_id]
    user = User.find(user_id)
    # @ideas = user.goals
    @ideas = user.ideas
  end

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to account_path
  end

  def goals
    @goals = current_user.goals
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :avatar_url, :avatar)
  end

end
