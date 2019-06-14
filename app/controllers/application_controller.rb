class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def current_user
    if session[:name]
      @name = session[:name]
    end
  end

  def logged_in?
    redirect_to '/login' unless !!current_user
    !!current_user
  end

end
