class BeeSessionsController < ApplicationController
  
  def new
  end

  def create
    bee = Bee.find_by_email(params[:bee_session][:email])
    if bee && bee.authenticate(params[:bee_session][:password])
      beesign_in bee
      redirect_to bee
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    beesign_out
    redirect_to root_path
  end
end
