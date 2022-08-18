class UsersController < ApplicationController
  before_action :sign_in_required, only: [:index, :show]
  before_action :set_q, only: [:index, :search]
  
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def search
    @results = @q.result
  end

  private

  def set_q
    @q = User.ransack(params[:q])
  end
end
