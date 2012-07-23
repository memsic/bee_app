module QueenSessionsHelper
  
  def queensign_in(queen)
    cookies.permanent[:remember_token] = queen.remember_token
    self.current_queen = queen
  end
  
  def queensign_out
    self.current_queen = nil
    cookies.delete(:remember_token)
  end
  
  def queensigned_in?
    !current_queen.nil?
  end
  
  def current_queen=(queen)
    @current_queen = queen
  end
  
  def current_queen
    @current_queen ||= Queen.find_by_remember_token(cookies[:remember_token])
  end
end
