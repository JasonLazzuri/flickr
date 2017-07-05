class TagsController < ApplicationController

before_action :authenticate_user!, :only => [:index]

  def show
  end

  def edit
  end

  def index
  end

  def new
  end
end

private
  def tag_params
    params.require(:tag).permit(:name)
end
