class Category < ApplicationRecord
  has_many :businesses
  has_many :reviews
  #has_many :reviews, through: :businesses
  validates :name, presence: true
end
