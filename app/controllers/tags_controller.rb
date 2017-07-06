class TagsController < ApplicationController

before_action :authenticate_user!, :only => [:index]

  def show
  end

  def edit
  end

  def index
  end

  def new
    @tag = Tag.new
    @user = current_user
    @image = Image.find(params[:image_id])
  end

  def create
    @user = current_user
    @image = @user.images.find(params[:image_id])
    @tag = @image.tags.create(tag_params)
    redirect_to '/'
  end


end

private
  def tag_params
    params.require(:tag).permit(:name)
  end

def image_params
  params.require(:image).permit(:description, :image, :user_id, current_user)
end
