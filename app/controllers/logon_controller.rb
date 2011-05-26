class LogonController < ApplicationController
  skip_before_filter :authenticate , :only => [:login]
  
  def login
    @user = User.login(params[:username], params[:userpass])
    if @user
      session[:user] = @user.id
      redirect_to(@user)
    else
     flash[:notice] = "Login ou Senha incorretos."
    end
  end

  def logout
    session[:user] = nil
  end

end
