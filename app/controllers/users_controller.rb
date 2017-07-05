class UsersController < ApplicationController

  before_action :only => [:new, :edit] do
     redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def show
  end

  def edit
  end

  def index
    @user = current_user
    @images = @user.images
  end

  def new
  end

end

private
  def user_params
    params.require(:user).permit(:name)
end
