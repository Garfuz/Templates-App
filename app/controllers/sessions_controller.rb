class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to new_webpage_path

    else user.nil?
        flash.now[:error] = "Invalid email/password combination."
        render :new
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
  end
end
