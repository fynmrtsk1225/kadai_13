class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :set_q, only: [:index, :search]

  def index
    @products = Product.all
  end

  def show
  end

  def search
    @results = @product_q.result
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_q
    @product_q = Product.ransack(params[:product_q])
  end
end