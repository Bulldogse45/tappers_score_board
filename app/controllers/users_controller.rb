class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
    render 'new'
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "Account updated!"
      redirect_to user_path(@user)
    else
      render :action => :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :email, :name)
  end
end
