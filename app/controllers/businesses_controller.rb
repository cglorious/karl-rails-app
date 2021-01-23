class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    business = category.businesses.build(business_params))
    if business.save
      redirect_to business_path(business)
    else
      render new_business
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :phone_number, :city, :state, :price_range, :category_id)
  end

end
