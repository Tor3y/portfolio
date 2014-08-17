class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :is_admin


def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
end


def is_admin 
	@is_admin ||= User.find(session[:user_id]) if session[:user_id] && current_user.is_admin
end

end


