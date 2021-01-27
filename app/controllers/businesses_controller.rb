class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def new
    if current_user.admin?
      @business = Business.new
    else
      redirect_to businesses_path
    end
  end

  def create
    business = Business.create(business_params)
    binding.pry
    if business.save
      redirect_to business_path(business)
    else
      render new_business_path
    end
  end

  def show
    @business = Business.find_by(id: params[:id])
  end

  private

  def business_params
    params.require(:business).permit(:name, :city, :state, :price_range, :category_id)
  end

end
