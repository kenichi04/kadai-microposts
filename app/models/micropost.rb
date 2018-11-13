class Micropost < ApplicationRecord
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }


end
