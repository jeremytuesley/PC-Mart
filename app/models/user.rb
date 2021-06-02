class User < ApplicationRecord
  has_many :products
  has_many :wishlist
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of     :name
  validates_presence_of     :phone
end
