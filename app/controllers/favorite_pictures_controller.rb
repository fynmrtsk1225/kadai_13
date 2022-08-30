class FavoritePicturesController < ApplicationController
  before_action :sign_in_required
  before_action :set_picture, only: [:create, :destroy]

  def index
    @favorite_pictures = current_user.favorited_pictures.order("id DESC")
  end

  def create
    FavoritePicture.create(user_id: current_user.id, picture_id: params[:id])
    # binding.pry
  end
  
  # def destroy
  #   favorite_picture = FavoritePicture.find_by(user_id: current_user.id, picture_id: params[:picture_id])
  #   favorite_picture.destroy
  # end
  
  def destroy
    FavoritePicture.find_by(user_id: current_user.id, picture_id: params[:id]).destroy
    # binding.pry
  end

  private

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
