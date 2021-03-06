class PostsController < ApplicationController
  before_action :set_user

  # GET /users/posts
  # GET /users.json
  def index
    @posts = @user.posts
    @posts = @posts.sort_by{|e| e[:created_at]}.reverse
    @new_post = Post.new
  end

  # GET /users/1/post/1
  # GET /users/1/post/1.json
  def show
  end

  # GET /users/new
  def new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users/1/post
  # POST /users/1/post.json
  def create
    @post = Post.new(content: params[:post][:content], user_id: @user.id)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @user }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to @user }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end
end
