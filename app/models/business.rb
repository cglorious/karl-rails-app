class Business < ApplicationRecord
  belongs_to :category
  has_many :customers
  has_many :reviews
  has_many :customers, through: :reviews
  validates :name, :price_range, presence: true

  def average_rating
    if self.reviews.count > 0
      @ratings = []
      @count = self.reviews.count.to_f

      self.reviews.each do |review|
        @ratings << review.rating
      end

      @total = @ratings.inject(:+).to_f
      (@total / @count).round(2)
    else
      "none available"
    end
  end

  def has_reviews?
    !!(self.reviews.count > 0)
  end

  def total_reviews
    self.reviews.count
  end

end
