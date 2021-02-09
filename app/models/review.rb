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
    most = @sorted[0]
    business = Business.find_by_id(most)
    #@sorted[-1]
    #[1, 1, 2, 3, 1, 2, 4, 4, 1]
    #check which value has the most
  end
end

#create a link
#land on the business/:id
