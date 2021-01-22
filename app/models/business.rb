class Business < ApplicationRecord
  belongs_to :customer
  belongs_to :category
  has_many :reviews
  has_many :customers, through: :reviews
  #helper_method :location, :average_rating

  #def location
  #end

  #def average_rating
  #end
end
