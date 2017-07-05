class ImagesController < ApplicationController
  def show
  end

  def edit
  end

  def index
    @images = Image.all
  end

  def create
    @user = current_user
    @image = @user.images.create(image_params)
    redirect_to '/'
  end

  def new
    @image = Image.new
    @user = current_user
  end

end

private
  def image_params
    params.require(:image).permit(:description, :image, :user_id, current_user)
end
