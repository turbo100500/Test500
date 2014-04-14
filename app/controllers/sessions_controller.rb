class SessionsController < ApplicationController


	def new
	end


	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			redirect_to root_url, :notice => "Logged IN!"
		else
		
		render 'new'
		end
	end


	def destroy
	end
end
