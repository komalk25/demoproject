class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  
  belongs_to :seller

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :image, presence: true

  has_many :cart_items
end
 