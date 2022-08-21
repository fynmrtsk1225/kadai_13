class FavoriteProductsController < ApplicationController
  before_action :set_product, only: [:create, :destroy]

  def index
  end

  def create
    FavoriteProduct.create(user_id: current_user.id, product_id: params[:id])
  end

  def destroy
    FavoriteProduct.find_by(user_id: current_user.id, product_id: params[:id]).destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

end
