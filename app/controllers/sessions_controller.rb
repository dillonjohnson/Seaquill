class SessionsController < ApplicationController
  def new
  end
  
  def create
    customer = Customer.find_by(email: params[:session][:email].downcase)
    if customer && customer.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in customer
      redirect_to welcome_path
    else
      #format.html{ redirect_to login_path, notice: 'Invalid email/password combination'}
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
