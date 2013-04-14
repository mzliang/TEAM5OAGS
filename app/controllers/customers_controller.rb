class CustomersController < ApplicationController
  def new
    @customer = Customer.new
    @title = 'Sign up'
  end

  def show

  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create

  end
end
