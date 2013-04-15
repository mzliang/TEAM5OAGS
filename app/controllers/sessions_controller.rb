class SessionsController < ApplicationController

  def new
  	@title = "Sign in"
  	render 'new'
  end

  def create
  	user = Customer.find_by_username(params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			flash.now[:success] = 'you did it!'
			redirect_back_or user
		else
			flash.now[:error] = 'Invalid email/password combination' # Not quite right!
			render 'new'
		end
  end

  def destroy
  	sign_out
  	redirect_to root_url
  end
end
