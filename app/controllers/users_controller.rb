class UsersController < ApplicationController
  before_action :sign_in_required, only: [:index, :show]
  
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end
end
