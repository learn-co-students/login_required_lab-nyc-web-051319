class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end


  def destroy
    session[:name] = nil
  end

  private

end
