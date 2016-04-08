class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def logged_in?
    @current_user = (params[:user] && User.find_by(token: params[:user][:token])) || User.find_by(token: params[:token])
    render json: "Invalid TOKEN" unless @current_user && @current_user.token && @user.id == @current_user.id
  end

end
