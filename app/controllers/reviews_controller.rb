class ReviewsController < ApplicationController
  def index
    if params[:customer_id] && @customer = Customer.find_by(id: params[:id])
      @reviews = @customer.reviews
    elsif params[:business_id] && @business = Business.find_by(id: params[:id])
      @reviews = @business.reviews
    else
      @reviews = Review.all
    end
  end

  def new
  end

  def create
  end
end
