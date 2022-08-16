class Picture < ApplicationRecord
  belongs_to :user
  has_many :picture_tags, dependent: :destroy
  has_many :attach_tags, through: :picture_tags, source: :tag
  mount_uploader :image, ImageUploader
end
