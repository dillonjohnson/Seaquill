class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def confirm_logged_in
    unless session[:customer_id]
      flash[:danger] = "Please log in or sign up as a customer"
      redirect_to login_path
    else
      return true
    end
  end
end
