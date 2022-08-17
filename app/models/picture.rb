class Picture < ApplicationRecord
  belongs_to :user

  has_many :picture_tags, dependent: :destroy
  has_many :attached_tags, through: :picture_tags, source: :tag
  accepts_nested_attributes_for :picture_tags, allow_destroy: true

  has_many :products, dependent: :destroy

  mount_uploader :image, ImageUploader
end
