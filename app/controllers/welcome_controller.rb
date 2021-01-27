class WelcomeController < ApplicationController
  skip_before_action :verified_user

  def create

    pp request.env['omniauth.auth']
    #find or create by params
    session[:name] = request.env['omniauth.auth']['info']['name']
    session[:omniauth_data] = request.env['omniauth.auth']

    redirect_to login_path
  end
end
