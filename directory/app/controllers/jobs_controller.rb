class JobsController < ApplicationController

  def index
    if params[:search]
      @jobs = Job.search(params[:search])
    else
      @jobs = Job.all
    end
  end

  def show
    @jobs = Job.find(params[:id])
  end

end
