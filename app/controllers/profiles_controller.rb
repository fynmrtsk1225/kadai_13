class ProfilesController < ApplicationController
  before_action :sign_in_required
  before_action :set_profile
  before_action :ensure_user

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to user_path(current_user), notice: "プロフィールを編集しました!"
    else
      render :edit
    end
  end
  
  private

  def set_profile
    @user = User.find(params[:id])
    @profile = @user.profile
  end

  def ensure_user
    @users = current_user
    redirect_to user_path(@users), notice: "他ユーザのプロフィール更新はできません" if @user != @users
  end

  def profile_params
    params.require(:profile).permit(:image, :image_cache, :content, :age, :constitution, :floor, :square)
  end
end