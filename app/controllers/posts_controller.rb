class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?


  # GET /posts
  # GET /posts.json
  def index
    # byebug
    @user = User.find_by(token: params[:token])
    @posts = Post.where(supplier_id: @user.id)

    @posts
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
    if @post.update(post_params)
      render :show, status: :ok, location: @post
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
    @posts = Post.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :details, :start_at, :end_at, :supplier_id, :location_id, :claimed, :claimant_id, :completed)
    end
end
