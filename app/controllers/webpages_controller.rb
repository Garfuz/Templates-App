class WebpagesController < ApplicationController
  def new
    @webpage = Webpage.new
  end

  def create
    @webpage = Webpage.new
    @webpage.name = params [:user][:name]
    @webpage.color = params [:user][:color]
    @webpage.photo = params [:user][:photo]
    # @webpage.instagram = [:user][:instagram]
    if @webpage.save
      redirect_to new_view_path
    else
      render action: "new"
    end
  end

  def show
    @webpage = Webpage.find(params[:id])
  end
end
