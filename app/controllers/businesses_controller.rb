class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    business = Business.create(business_params)
    if business.save
      redirect_to business_path(business)
    else
      render new_business_path
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :phone_number, :city, :state, :price_range)
  end

end
