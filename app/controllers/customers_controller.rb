class CustomersController < ApplicationController
  def index
    @pageName = "Customers"
    @customers = Customer.all
  end

  def alphabetized
    @pageName = "Customers - alphabetical order"
    @customers = Customer.order(:name)
  end

  def missing_email
    @pageName = "Customers missing email address"
    @customers = Customer.where(email: '')
  end

end
