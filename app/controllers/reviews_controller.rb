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
    @business = Business.find_by(id: params[:business_id])
    @review = @business.reviews.new
  end

  def create
    if (review = Review.create(review_params))
      redirect_to business_path(review.business)
    else
      render new_business_review(review.business)
    end
  end

  def edit
    @review = Review.find_by(id: params[:id])
  end

  def update
    binding.pry
    @review = Review.find_by(id: params[:id])
    @review.update(review_params)
    redirect_to customer_path(current_user)
  end

  private

  def review_params
    params.require(:review).permit(
      :content,
      :rating,
      :customer_id,
      :business_id
    )
  end
end
