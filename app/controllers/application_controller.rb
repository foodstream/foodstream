class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def logged_in?
    render json: "Invalid TOKEN" unless params[:token] && User.find_by(token: params[:token])
  end

end
