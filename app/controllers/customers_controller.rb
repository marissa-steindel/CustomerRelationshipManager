class CustomersController < ApplicationController
  def index
    @pageName = "Customers"
    @customers = Customer.all
  end

  def alphabetized
    @pageName = "Customers - alphabetical order"
    @customers = Customer.order(:name)
    render :index
  end

  def missing_email
    @pageName = "Customers missing email address"
    @customers = Customer.where(email: '')
    render :index
  end

end
