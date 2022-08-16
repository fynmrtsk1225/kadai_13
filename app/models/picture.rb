class Picture < ApplicationRecord
  belongs_to :user
  has_many :picture_tags, dependent: :destroy
  has_many :attach_tags, through: :picture_tags, source: :tag
  has_many :tags, through: :picture_tags
  accepts_nested_attributes_for :picture_tags, allow_destroy: true
  mount_uploader :image, ImageUploader
end
