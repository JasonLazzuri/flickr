class ImagesController < ApplicationController
  def show
    @user = current_user
    @image = Image.find(params[:id])
  end

  def edit
    @image = Image.find(params[:id])

  end

  def index
    @user = current_user
    @images = Image.all
  end

  def create
    @user = current_user
    @image = @user.images.create(image_params)
    redirect_to '/'
  end

  def update
     @image = Image.find(params[:id])
     if @image.update(image_params)
       redirect_to  user_image_path, notice: 'Product successfully updated!'
     else
       render :edit
     end
   end

 def destroy
   @user = current_user
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to root_path, notice: 'Product successfully deleted!'
  end

  def new
    @image = Image.new
    @user = current_user
  end

end

private
def user_params
  params.require(:user).permit(:name)
end

  def image_params
    params.require(:image).permit(:description, :image, :user_id, current_user)
end
