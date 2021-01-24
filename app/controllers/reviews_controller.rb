class ReviewsController < ApplicationController
  def index
    if params[:customer_id] && @customer = Customer.find_by(id: params[:customer_id])
      @reviews = @customer.reviews
    elsif params[:business_id] && @business = Business.find_by(id: params[:business_id])
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
