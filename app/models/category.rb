class Category < ApplicationRecord
  has_many :businesses
  has_many :reviews
  validates :name, presence: true
end
