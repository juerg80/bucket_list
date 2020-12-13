class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_resource_params)
    if(@user.save)
      session[:user_id] = @user.id
      redirect_to ideas_path
    else
      render 'new'
    end
  end

  private

  def user_resource_params
    params.require(:user).permit(:email, :password)
  end

end
