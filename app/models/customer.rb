class Customer < ApplicationRecord
  has_many :businesses
  has_many :reviews
  has_many :businesses, through: :reviews
  has_secure_password
  validates :email, uniqueness: true
  validates :name, :location, presence: true
  scope :admin, -> {where(admin: true)}

end
