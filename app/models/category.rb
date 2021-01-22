class Category < ApplicationRecord
  has_many :businesses
  has_many :customers, through: :businesses
end
