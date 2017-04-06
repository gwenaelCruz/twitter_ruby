class FollowingsController < ApplicationController
  before_action :set_user

  # GET /users
  # GET /users.json
  def index
    @followings = @user.followings
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @not_followings = User.where.not(id:@user.followings(&:id)).where.not(id:@user.id)
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users/1/followings
  # POST /users/1/followings.json
  def create

    @following = Follow.new(follower_id:@user.id ,followed_id: [:id])
    respond_to do |format|
      if @following.save
        format.html { redirect_to @user.followings, notice: 'You follow a new user' }
        format.json { render :show, status: :created, location: @user.followings }
      else
        format.html { redirect_to @user.followings, notice: 'You cannot follow this user'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @following = Follow.new(follower_id:@user.id ,followed_id: [:id])
    respond_to do |format|
      if @following.save
        format.html { redirect_to @user.followings, notice: 'You follow a new user' }
        format.json { render :show, status: :created, location: @user.followings }
      else
        format.html { redirect_to @user.followings, notice: 'You cannot follow this user'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @follow.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :img_url)
    end

end
