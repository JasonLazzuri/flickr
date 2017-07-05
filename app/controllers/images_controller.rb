class ImagesController < ApplicationController
  def show
  end

  def edit
  end

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end
end
