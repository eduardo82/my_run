class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  before_filter :authenticate
  helper_method :session_user
  protected 
  
  #Pegando os dados do usuario e alocando na sessão corrente
    def session_user
      @session_user ||= User.find(:first, :conditions => ['id = ?', session[:user]])
    end
  
  
  #Autenticação do Usuário
  def authenticate
    unless session[:user]
      session[:return_to] = request.request_uri
      render :controller => "logon", :action => "login"
      return false
    end
    return true
  end
end
