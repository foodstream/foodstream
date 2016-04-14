require 'ical_module'
class PostsController < ApplicationController
  include IcalModule

  before_action :set_post, only: [:show, :edit, :update, :destroy, :send_ical]
  before_action :logged_in?


  # GET /posts
  # GET /posts.json
  def index
    @user = User.find_by(token: params[:token])
    @posts = Post.where(supplier_id: @user.id)
    @claims = Post.where(claimant_id: @user.id)
    @posts
    @claims
  end

  # GET /posts/1
  # GET /posts/1.json
  def show

  end

  # GET /posts/new
  def new

  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    image_link = ENV["S3_PATH"] + post_params[:image_link] if post_params[:image_link]

    @post.image_link = image_link
    @post.supplier = @current_user

    if @post.save
      render :show, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    image_link = ENV["S3_PATH"] + post_params[:image_link] if post_params[:image_link]

    if @post.update(post_params)
      @post.update_attribute(:image_link, image_link)
      render :action => :show
    else
      render json: @post.errors, status: :unprocessable_entity
    end

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    head :no_content
  end

  def search
    latitude = params[:latitude].to_f
    longitude = params[:longitude].to_f

    @posts = Post.within(params[:radius].to_f, :origin => [latitude, longitude])
  end

  def send_ical
    #set up hash for ical generation
    file_name = "tmp/#{Time.now}post_event.ics"
    event_hash = {dstart: @post.start_at, dtend: @post.end_at, summary: @post.title, description: @post.details, location: @post.address_string, file_name: file_name}

    if create_ics_file(event_hash)
      recipient_email = User.find(@current_user.id).email
      redirect_to controller: 'messages', action: 'send_email', recipient:recipient_email, subject:"Your requested foodstream calendar event", body:"#{@post.title} event info attached", file_name:file_name, post_id:@post.id, token:@current_user.token
    else
      render json: "Ics file not created"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
      # @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :details, :start_at, :end_at, :supplier_id, :location_id, :claimed, :claimant_id, :completed, :latitude, :longitude, :address_string, :image_link, :post_image)
    end
end
