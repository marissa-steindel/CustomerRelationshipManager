class CustomersController < ApplicationController
  def index
    @pageName = "All Customers - Displayed in Database Order"
    @customers = Customer.all
  end

  def alphabetized
    @pageName = "All Customers - Displayed in Alphabetical Order"
    @customers = Customer.order(:name)
    render :index
  end

  def missing_email
    @pageName = "Customers missing an email address"
    @customers = Customer.where(email: '')
    render :index
  end

end
