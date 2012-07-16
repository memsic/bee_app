class QueensController < ApplicationController
  
  def show
    @queen = Queen.find(params[:id])
  end
  
  def new
    @queen = Queen.new
  end
  
  def create
    @queen = Queen.new(params[:queen])
    if @queen.save
      flash[:success] = "Welcome to the Bee App!"      
      redirect_to @queen
    else
      render 'new'
    end
  end
end
