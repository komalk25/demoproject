class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  belongs_to :seller

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :image, presence: true
end
 