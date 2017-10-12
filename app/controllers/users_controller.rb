class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      # render :text => "here"
      render action: 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
