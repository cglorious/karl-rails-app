class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :business
  validates :rating, presence: true

  def self.most_reviewed_business
    @array = []

    self.all.each do |r|
      @array << r.business_id
    end

    @sorted = @array.sort
    #iterate through array to see which element occurred the most 
    most = @sorted[0]
    business = Business.find_by_id(most)
  end
end
