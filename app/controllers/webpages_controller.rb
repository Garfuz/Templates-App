class WebpagesController < ApplicationController
  def new
    @webpage = Webpage.new
  end

  def create
    @webpage = Webpage.new
    # @webpage.name = params [:webpage][:name]
    @webpage.color = params[:webpage][:color]
    @webpage.photo = params[:webpage][:photo]
    # @webpage.instagram = [:webpage][:instagram]
    if @webpage.save
      redirect_to template_path
    else
      render action: "new"
    end
  end

  def show
    @webpage = Webpage.find_by(params[:photo])
  end
end
