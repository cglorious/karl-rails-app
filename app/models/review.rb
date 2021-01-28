class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :business
  validates :rating, presence: true
end
