class UsersController < ApplicationController
  before_action :set_user, only:[:show,:update,:destroy]
  def index
    @users = User.all
  end

  def show
  end
<<<<<<< HEAD

  def create
    User.create!(user_params)

=======

  def create
    User.create!(user_params)
>>>>>>> 110a039... 課題１
  end

  def update
    @user.update!(user_params)
  end

  def destroy
    @user.destroy!
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:account, :name, :email)
  end

<<<<<<< HEAD
end
=======
end
>>>>>>> 110a039... 課題１
