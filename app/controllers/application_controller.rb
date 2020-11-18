class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  before_action :current_user
  helper_method :current_user
  helper_method :logged_in?

  private

  def logged_in?
    redirect_to root_path unless session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
=======
  before_action :verify_user_is_authenticated
  helper_method :current_user

  private
  def verify_user_is_authenticated
    redirect_to '/' unless user_is_authenticated
  end

  def user_is_authenticated
    !!current_user
  end

  def current_user
    User.find_by(id:session[:user_id])
>>>>>>> b4f61e3f557b1abea4b72f0069efd9c696d74495
  end
end
