class UsersController < ApplicationController
  before_action :sign_in_required
  before_action :set_q, only: [:index, :follows, :followers, :search]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def search
    @results = @user_q.result
  end

  def follows
    @user = User.find(params[:id])
    @users = @user.followings
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
  end

  private

  def set_q
    @user_q = User.ransack(params[:q])
  end
end
