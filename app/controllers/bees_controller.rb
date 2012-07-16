class BeesController < ApplicationController
  
  def show
    @bee = Bee.find(params[:id])
  end  
  
  def new
    @bee = Bee.new
  end
  
  def create
    @bee = Bee.new(params[:bee])
    if @bee.save
      flash[:success] = "Welcome to the Bee App!"
      redirect_to @bee
    else
      render 'new'
    end
  end
end
