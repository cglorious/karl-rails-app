class Customer < ApplicationRecord
  has_many :businesses
  has_many :reviews
  has_many :businesses, through: :reviews
  has_many :categories, through: :reviews
  helper_method :location

  def location
  end
end
