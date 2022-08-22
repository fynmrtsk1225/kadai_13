class Product < ApplicationRecord
  belongs_to :picture

  has_many :favorite_products, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50}
  validates :product_url, presence: true, format: /\A#{URI::regexp(%w(http https))}\z/

  mount_uploader :image, ImageUploader
end
