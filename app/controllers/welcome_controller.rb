class WelcomeController < ApplicationController
  skip_before_action :verified_user

  def create
    if auth
      binding.pry
      @customer = Customer.find_or_create_by(email: auth['info']['email'])
      if @customer.each do |c|
        c.password = "password"
      end
      redirect_to customers_path
    else
      redirect_to signup_path
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
