class SessionsController < ApplicationController
  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      byebug
      user.generate_token
      render json: user
    else
      render json: "Invalid Email or Password"
    end
  end

  def signup
  end

  def logout
    user = User.find_by_token(params[:token])
    if user
      user.destroy_token
      user.save
    end
    render json: "Logged out"
  end

  def reset_password
  end
end
