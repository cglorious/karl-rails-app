class Customer < ApplicationRecord
  has_many :businesses
  has_many :reviews
  has_many :businesses, through: :reviews
  #do I need the category/review relationship?
  has_many :categories, through: :reviews
  has_secure_password
  validates :email, uniqueness: true
  validates :name, presence: true
end
