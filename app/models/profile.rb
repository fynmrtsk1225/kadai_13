class Profile < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 255}
  validates :image, presence: true
  mount_uploader :image, ImageUploader
  enum age: {'10代': 1, '20代': 2, '30代': 3, '40代': 4, '50代': 5, '60代': 6, '70代': 7, '80代~': 8}
  enum constitution: {Family: 1, Single: 2, Sharing: 3, Couple: 4, Other: 5}
  enum floor: {'1R': 1, '1K': 2, '1DK': 3, '1LDK': 4, '2K': 5, '2DK': 6, '2LDK': 7,
    '3K': 8, '3DK': 9, '3LDK': 10, '4K': 11, '4DK': 12, '4LDK': 13, 'exception': 14}
  enum square: {'~15㎡': 1, '15~20㎡': 2, '20~25㎡': 3, '25~30㎡': 4, '30~35㎡': 5, '35~40㎡': 6, '40~45㎡': 7, '45~50㎡': 8, '50~60㎡': 9, '60~70㎡': 10, '70~80㎡': 11, '80~90㎡': 12, '90~100㎡': 13, '100~200㎡': 14, '200~300㎡': 15, '300~400㎡': 16, '400~500㎡': 17, '500~㎡': 18}
end
