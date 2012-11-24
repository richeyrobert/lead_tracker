class SessionsController < ApplicationController

	def create
		if user = User.authenticate(params[:email], params[:password])
			session[:user_id] = user.id
			uri = session[:original_uri]
			session[:original_uri] = nil
			#redirect_to(uri || {:action => "index"})
			redirect_to :partners, :notice => "logged in successfully"
		else
			flash.now[:alert] = "invaled login/password combination"
			render :action => 'new'
		end
	end

	def destroy
		reset_session
		redirect_to :login, :notice => "You successfully logged out"
	end
end
