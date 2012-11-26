class SessionsController < ApplicationController

	def create
		if user = User.authenticate(params[:email], params[:password])
			session[:user_id] = user.id
			uri = session[:original_uri]
			session[:original_uri] = nil
			#redirect_to(uri || {:action => "index"})
			if current_user.user_type.id == 1
				redirect_to :users, flash[:notice] => "Super Administrator logged in successfully"
			elsif current_user.user_type.id == 2
				redirect_to :agents, flash[:notice] => "Partner Admin logged in successfully" #changed from :notice to flash[:notice]
			else
				redirect_to :leads, flash[:notice] => "logged in successfully" #changed from :notice to flash[:notice]
			end
		else
			flash.now[:alert] = "invaled login/password combination"
			render :action => 'new'
		end
	end

	def destroy
		reset_session
		redirect_to :login, flash[:notice] => "You successfully logged out" #changed from :notice to flash[:notice]
	end
end
