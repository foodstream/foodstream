require 'byebug'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def logged_in?
    redirect_to sessions_login_path, notice: "You must log in to access this page" #unless params[:token]
  end


end
