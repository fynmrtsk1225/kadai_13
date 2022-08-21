class FavoriteProductsController < ApplicationController
  def index
  end

  def create
    FavoriteProduct.create(user_id: current_user.id, product_id: params[:id])
    redirect_to products_path
  end

  def destroy
    FavoriteProduct.find_by(user_id: current_user.id, product_id: params[:id]).destroy
    redirect_to products_path
  end
end
