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
    review = Review.create(review_params)
    if review.save
      redirect_to business_path(review.business)
    else
      message = review.errors.full_messages.join
      flash[:message] = message
      redirect_to new_business_review_path(review_params[:business_id])
    end
  end

  def edit
    @review = Review.find_by(id: params[:id])
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(review_params)
    redirect_to customer_reviews_path(current_user, @review)
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    @review.delete
    redirect_to customer_path(@review.customer)
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
