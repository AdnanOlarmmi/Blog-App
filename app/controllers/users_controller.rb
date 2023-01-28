class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User was successfully created.'
      redirect_to user_path(@user)
    else
      flash.now[:alert] = 'There was a problem creating the user.'
      render :new
    end
  end
end
