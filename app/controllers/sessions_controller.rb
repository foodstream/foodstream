class SessionsController < ApplicationController
  def login
    if !session[:user_id]
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to posts_path, notice: "You have succesfully logged in!"
      else
        if user
          flash.now[:alert] = "Login failed: invalid email or password."
        end
        render "login"
      end

    else
      redirect_to posts_path
    end

  end

  def signup
    redirect_to new_user_path
  end

  def logout
    session[:user_id] = nil
    redirect_to sessions_login_path, notice: "See you next time!"
  end

  def reset_password
  end
end
