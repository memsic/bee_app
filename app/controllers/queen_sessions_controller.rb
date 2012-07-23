class QueenSessionsController < ApplicationController
  
  def new
  end

  def create
    queen = Queen.find_by_email(params[:queen_session][:email])
    if queen && queen.authenticate(params[:queen_session][:password])
      queensign_in queen
      redirect_to queen
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    queensign_out
    redirect_to root_path
  end
end
