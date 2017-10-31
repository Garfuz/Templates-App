class WebpagesController < ApplicationController
  def new
    @webpage = Webpage.new
  end

  def create
    @webpage = Webpage.new
    @webpage.user = current_user
    @webpage.color = params[:webpage][:color]
    @webpage.photo = params[:webpage][:photo]
    # @webpage.instagram = [:webpage][:instagram]
    if @webpage.save
      redirect_to webpage_path(@webpage.id)
    else
      render action: "new"
    end
  end

  def show
    @webpage = Webpage.find(params[:id])
  end
end
