class SessionsController < ApplicationController
  def login
    user = User.find_by_email(params[:email].downcase)
    if user && user.verified && user.authenticate(params[:password])
      user.generate_token
      render json: user
    else
      render json: "Invalid Email or Password"
    end
  end

  def signup
  end

  def logout
    user = User.find_by(token: params[:token])
    if user
      user.destroy_token
      @current_user = nil
    end

  end

  def reset_password
  end


end
