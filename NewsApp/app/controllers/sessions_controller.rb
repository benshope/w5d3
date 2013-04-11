class SessionsController < ApplicationController
  def new
  end

  def create
    if log_in(params[:user][:email], params[:user][:password])
      redirect_to root_url
    else
      render :new
    end
  end
  
  def destroy
    log_out
    redirect_to newspapers_path
  end
end