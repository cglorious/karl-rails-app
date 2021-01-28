class Business < ApplicationRecord
  belongs_to :category
  has_many :customers
  has_many :reviews
  has_many :customers, through: :reviews
  validates :name, presence: true
end
