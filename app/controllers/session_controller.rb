class SessionController < ApplicationController
  def new
  end

  def create
    if @customer = Customer.find_by(name: params[:customer][:name])
      session[:user_id] = @customer.id
      redirect_to customer_path(@customer)
    else
      redirect_to '/signup'
    end
  end

  def destroy
    session.delete :customer_id
    redirect_to root_path
  end
end
