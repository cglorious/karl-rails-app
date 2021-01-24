class SessionController < ApplicationController
  skip_before_action :verified_user

  def new
  end

  def create
    customer = Customer.find_by(email: params[:customer][:email])
    if customer && customer.authenticate(params[:customer][:password])
      session[:user_id] = customer.id
      redirect_to customer_path(customer)
    else
      flash[:message] = "Please enter correct log in information."
      redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
