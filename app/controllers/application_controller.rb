class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :authenticate, :except => [:login, :session]

  protected 
  #Returns the currently logged in user or nil is there is not one
  def current_user
  	return unless session[:user_id]
  	@current_user ||= User.find_by_id(session[:user_id])
  end

  #make current_user available in template as a helper
  helper_method :current_user

  #filter method to enforce a login requirement
  #apply as a before_filter on any controller you want to protect
  def authenticate
  	logged_in? ? true : access_denied
  end

  #predicate method to test fo logged_in user
  def logged_in?
  	current_user.is_a? User 
  end

  #make Logged_in? availabe in templates as a helper
  helper_method :logged_in?

  def access_denied
  	redirect_to login_path, :notice => "please Log in to continue" and return false
  end


end
