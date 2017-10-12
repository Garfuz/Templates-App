class DashboardController < ApplicationController
  def index
    @user = User.new
      render '/sessions/new'
  end
end
