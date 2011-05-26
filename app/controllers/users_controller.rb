class UsersController < ApplicationController
  
  skip_before_filter :authenticate, :only => {:controller => "logon", :action => "login"}
  
  def index
    @users = User.all
  end
  
  def personal_index
    @user = User.find_by_username_and_userpass(params[:username],params[:userpass])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @runs = Run.find(params[@run.id])
    @user.destroy
    @runs.destroy    
  end
end
