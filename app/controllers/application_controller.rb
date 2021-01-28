class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  helper_method :logged_in?

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def current_user
    if @current_user.present?
      return @current_user
    end

    @current_user = User.find(session[:user_id])
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
