class CustomersController < ApplicationController
  def new
    @customer = Customer.new
    @title = 'Sign up'
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @user = Customer.new(params[:customer])
    if @user.save
      sign_in @user
      flash[:success]= "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = Customer.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
