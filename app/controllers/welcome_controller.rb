class WelcomeController < ApplicationController
  skip_before_action :verified_user

  def create
    #if auth
    #  @customer = Customer.find_or_create_by(email: auth['info']['email'])
    #  binding.pry
    #  if @customer.each do |c|
    #    c.password = "password"
    #  end
    #  redirect_to customers_path
    #else
    #  redirect_to signup_path
    #end

    pp request.env['omniauth.auth']
    session[:name] = request.env['omniauth.auth']['info']['name']
    session[:omniauth_data] = request.env['omniauth.auth']

    redirect_to customers_path
  end

  #protected

  #def auth
  #  request.env['omniauth.auth']
  #end

end
