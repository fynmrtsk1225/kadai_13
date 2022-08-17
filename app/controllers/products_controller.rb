class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
  end

  private

  def Product_params
    params.require(:Product)permit(:picture_id, :name, :product_url, :image_url, :image)
  end
end