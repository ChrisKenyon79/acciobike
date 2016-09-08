class UserController < ApplicationController
  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def show
    # before_action :is_authenticated
    @current_user = User.find(params[:id])
  end

  def destroy
  end

  private 

  def user_params
    params.require(:user).permit(:name, :bike_ids => [])
  end

end
