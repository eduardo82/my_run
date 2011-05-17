class RunsController < ApplicationController

  def index
    @runs = Run.all
  end

  def show
    @run = Run.find(params[:id])
  end

  def new
    @run = Run.new(:user => User.find(params[:user_id]))
  end

  def edit
    @run = Run.find(params[:id])
  end

  def create
    @run = Run.new(params[:run])
      if @run.save
        redirect_to(@run, :notice => 'Run was successfully created.')
      else
        render :action => "new"
      end
  end

  def update
    @run = Run.find(params[:id])
      if @run.update_attributes(params[:run])
        redirect_to(@run, :notice => 'Run was successfully updated.')
      else
        render :action => "edit"
      end
  end

  def destroy
    @run = Run.find(params[:id])
    @run.destroy
    redirect_to(runs_url)
  end
end
