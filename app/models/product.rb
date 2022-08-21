class Product < ApplicationRecord
  belongs_to :picture

  has_many :favorite_products, dependent: :destroy

  mount_uploader :image, ImageUploader
end
