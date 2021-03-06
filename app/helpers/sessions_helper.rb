module SessionsHelper
  def log_in(customer)
    session[:customer_id] = customer.id
  end

  # Logs out the current user.
  def log_out
    session.delete(:customer_id)
    @current_customer = nil
  end

  # Returns the current logged-in user (if any).
  def current_customer
    @current_customer ||= Customer.find_by(id: session[:customer_id])
  end
  
  def logged_in?
    !current_customer.nil?
  end
end
