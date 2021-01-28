class SessionController < ApplicationController
  skip_before_action :verified_user

  def new
    @customer = Customer.new
  end

  def create
    if auth = request.env['omniauth.auth']
      if @customer = Customer.find_by(email: auth['info']['email'])
      else
        password = auth['info']['name'].split(" ")[0].downcase
        @customer = Customer.create(
          email: auth['info']['email'],
          name: auth['info']['name'],
          password: password
        )
        #raise "show".inspect
        #location: auth['raw_info']['location']
      end
        session[:user_id] = @customer.id
        redirect_to customer_path(@customer)
    elsif
      customer = Customer.find_by(email: params[:customer][:email])
      if customer && customer.authenticate(params[:customer][:password])
        session[:user_id] = customer.id
        redirect_to customer_path(customer)
      else
        flash[:message] = "Please enter correct log in information."
        redirect_to '/login'
      end
    else #if they are brand new
      #unable to create an account option
    end
  end

    #name = request.env['omniauth.auth']['info']['name']
    #array = pw.split(" ")
    #password = array[0].downcase
    #password = lowercase first name

    #if customer.save
    #location: request.env['omniauth.auth']['raw_info']['location']
    #end

  def destroy
    session.clear
    redirect_to root_path
  end

  #private

  #def auth
  #  request.env['omniauth.auth']
  #end

end
