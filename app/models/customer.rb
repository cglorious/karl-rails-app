class Customer < ApplicationRecord
  has_many :businesses
  has_many :reviews
  has_many :businesses, through: :reviews
  #belongs_to :category, through: :businesses
  has_secure_password
  validates :email, uniqueness: true
  validates :name, presence: true

end
