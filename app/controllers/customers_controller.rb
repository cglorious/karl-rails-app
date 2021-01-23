class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    "hello world"
  end

  def show
  end

  private

  def customer_params
    params.require(:customer).permit(
      :name,
      :email,
      :password,
      :city,
      :state
    )
  end

end
