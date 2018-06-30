class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to your personnal page"
      redirect_to user_url(@user)
    else 
      render 'new'
    end
  end 

  def user_params
    params.require(:user).permit(:name, :email, :password, :confirmation_password)
  end

end
