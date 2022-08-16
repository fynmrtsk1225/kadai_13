class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates :name, presence: true
  
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile

  has_many :pictures, dependent: :destroy
end
