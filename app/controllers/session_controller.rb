class SessionController < ApplicationController
  def new
  end

  def create
    customer = Customer.find_by(email: params[:email])
    if customer && customer.authenticate(params[:password])
      session[:user_id] = customer.id
      redirect_to customer_path(customer)
    else
      flash[:message] = "Please input correct login information."
      redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
