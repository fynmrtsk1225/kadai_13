class Product < ApplicationRecord
  belongs_to :picture

  mount_uploader :image, ImageUploader
end
