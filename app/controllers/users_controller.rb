require 'email_template'
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?, except: [:new, :create, :verify]

  include EmailTemplate

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json

  def create
    @user = User.new(user_params)
    if @user.save

      redirect_to controller: 'messages',
                  action: 'send_confirmation',
                  recipient: @user.email,
                  subject: EMAIL_VALUES[:USER_CREATE_MESSAGE_TYPE][:SUBJECT],
                  body: "Click #{request.base_url}/users/#{@user.generate_verification_key}/verify?email=#{@user.email} to verify your account.",
                  email_type: :USER_CREATE_MESSAGE_TYPE
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /users/verify/:token
  # PATCH/PUT /users/verify/token.json
  def verify
    @user = User.find_by(email: params[:email])

    if @user && (@user.verification_key == params[:id])
      @user.destroy_verification_key
      @user.verified = true
      if @user.save
        redirect_to controller: 'messages',
                    action: 'send_confirmation',
                    recipient: @user.email,
                    subject: EMAIL_VALUES[:VERIFY_SUCCESS_MESSAGE_TYPE][:SUBJECT],
                    body: "#{@user.email} #{EMAIL_VALUES[:VERIFY_SUCCESS_MESSAGE_TYPE][:BODY]}",
                    email_type: :VERIFY_SUCCESS_MESSAGE_TYPE
      end
    else
      redirect_to controller: 'messages',
                  action: 'send_confirmation',
                  recipient: @user.email,
                  subject: EMAIL_VALUES[:VERIFY_FAILURE_MESSAGE_TYPE][:SUBJECT],
                  body: "#{@user.email} #{EMAIL_VALUES[:VERIFY_FAILURE_MESSAGE_TYPE][:BODY]}",
                  email_type: :VERIFY_FAILURE_MESSAGE_TYPE

    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if user_params[:ratings_attributes]
      @user.ratings << Rating.new(rating: user_params[:ratings_attributes].first[:rating].to_i, reviewer_id: user_params[:ratings_attributes].first[:reviewer_id].to_i, reviewed_id: user_params[:ratings_attributes].first[:reviewed_id].to_i)
    end

    if @user.update(user_params)
      render action: "show.json.jbuilder"
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

    # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:id, :first_name, :last_name, :password, :email, :organization, :description, :latitude, :longitude, :address_string, :profile_image, ratings_attributes: [:id, :rating, :reviewer_id, :reviewed_id ])
    end
end
