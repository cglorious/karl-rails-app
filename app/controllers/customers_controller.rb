class CustomersController < ApplicationController
  skip_before_action :verified_user, only: [:new, :create]

  def new
    @customer = Customer.new
  end

  def create
    if (customer = Customer.create(customer_params))
      session[:user_id] = customer.id
      redirect_to customer_path(customer)
    else
      render new_customer
    end
  end

  def show
    @customer = Customer.find_by(id: params[:id])
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
