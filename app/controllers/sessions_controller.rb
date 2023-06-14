class SessionsController < ApplicationController
	def new
	end

	def create
	  user = User.find_by(name: params[:session][:name])
	  if user && user.authenticate(params[:session][:password])
	    session[:user_id] = user.id
	    flash[:alert] = "You have successfully logged in"
	    redirect_to root_path
	  else
	    flash.now[:alert] = "There was something wrong with your login information"
	    render :new
	  end
	end
	def destroy
	  session[:user_id] = nil
	  flash[:alert] = "You have successfully logged out"
	  redirect_to login_path
	end
end