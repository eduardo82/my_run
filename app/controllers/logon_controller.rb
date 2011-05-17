class LogonController < ApplicationController
  skip_before_filter :authenticate , :only => [:login]
  
  def login
    @user = User.find_by_username_and_userpass(params[:username],params[:userpass])
    if @user
      session[:user] = @user.id
      redirect_to(@user)
    else
      render "login"
    end
  end

  def logout
    session[:user] = nil
  end

end
