class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    User.create(user_params)
  end

  def destroy
    User.destroy(params[:id])
  end

  def update
    user = User.find(params[id])
    user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :phone)
  end
end
