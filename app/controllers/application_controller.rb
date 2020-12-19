class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  helper_method :logged_in?

  def current_user
    User.find(session[:user_id])
  end

  def ensure_authenticated
    unless(logged_in?)
      redirect_to users_new_path
    end
  end

  def logged_in?
    session[:user_id].present?
  end
end
