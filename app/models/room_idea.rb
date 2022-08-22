class RoomIdea < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 50 }
  validates :color, length: { maximum: 100 }
  validates :content, length: { maximum: 255 }
  mount_uploader :image, ImageUploader
end
