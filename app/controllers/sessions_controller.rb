class SessionsController < ApplicationController

	def new

	end

  	def create
 		user = User.find_by_email(params[:session][:email])

 		if user.nil?
	      flash.now[:error] = "Invalid email/password combination."
	      @title = "Sign in"
	      render 'new'
	    elsif user && user.authenticate(params[:session][:password])
			sign_in user

			if Player.where(:user_id => current_user.id).first == nil
				redirect_to newplayer_path
			else
				redirect_back_or current_user
			end
		else
      		flash.now[:error] = 'Invalid email/password combination'
      		render 'new'
    	end
	end
	
	def destroy
		sign_out
		redirect_to root_path
	end
end
