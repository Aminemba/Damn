class Post < ApplicationRecord

  belongs_to :user,class_name: 'User',foreign_key: 'user_id'
  validates :content, presence: true
  validates :image, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  mount_uploader :image, ImageUploader

end
