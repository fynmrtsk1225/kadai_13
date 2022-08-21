class Product < ApplicationRecord
  belongs_to :picture

  has_many :favorite_products, dependent: :destroy

  validates :name, presence: true

  mount_uploader :image, ImageUploader
end
