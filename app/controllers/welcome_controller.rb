class WelcomeController < ApplicationController
before_action :confirm_logged_in#, :only => [:index]
  def index
    @products = Product.all
  end
end
