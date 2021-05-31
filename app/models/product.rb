class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :picture
  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
