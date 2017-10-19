class WebpagesController < ApplicationController
  def new
    @site = Site.new
  end

  def create
    @site = Site.new

  end

  def edit
  end
end
