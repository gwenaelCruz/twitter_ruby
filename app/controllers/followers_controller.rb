class FollowersController < ApplicationController
  before_action :set_user

  # GET /users
  # GET /users.json
  def index
    @follows = @user.follows
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @follow = Follow.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @follow = Follow.new(follow_params)

    respond_to do |format|
      if @follow.save
        format.html { redirect_to @user, notice: 'You are now following ...' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to @user, notice: 'Follow could not be created'}
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
    @follow.destroy
    respond_to do |format|
      format.html { redirect_to @user, notice: 'User was successfully destroyed.' }
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
