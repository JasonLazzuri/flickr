class ImagesController < ApplicationController
  def show
  end

  def edit
  end

  def index
    @images = Image.all
  end

  def create
    @image = Image.create(image_params)
  end

  def new
    @image = Image.new
  end
end

private
  def image_params
    params.require(:image).permit(:description,:image)
end
