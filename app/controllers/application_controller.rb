class ApplicationController < ActionController::Base
  before_action :verified_user
  helper_method :current_user, :logged_in?, :admin?

  private

  def current_user
    @current_user ||= Customer.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def verified_user
    redirect_to root_path unless logged_in?
  end

  def admin?
    !!current_user.admin
  end

end
