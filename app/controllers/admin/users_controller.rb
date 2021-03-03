class Admin::UsersController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_user, except: [:index]

  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
  end

  def destroy
    if @user && @user.destroy
      redirect_to admin_users_path, notice: 'User has been deleted.'
    else
      render :index
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
