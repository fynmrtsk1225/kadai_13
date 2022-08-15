class ProfilesController < ApplicationController
  before_action :set_profile

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to user_path, notice: "プロフィールを編集しました"
    else
      render :edit
    end
  end
  
  private

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:image, :image_cache, :content, :age, :constitution, :floor, :square)
  end
end