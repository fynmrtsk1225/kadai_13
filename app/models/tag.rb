class Tag < ApplicationRecord
  has_many :picture_tags, dependent: :destroy
  # has_many :attached_pictures, through: :picture_tags, source: :picture
  has_many :pictures, through: :picture_tags
end
