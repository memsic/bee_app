module BeeSessionsHelper
  
  def beesign_in(bee)
    cookies.permanent[:remember_token] = bee.remember_token
    self.current_bee = bee
  end
  
  def beesign_out
    self.current_bee = nil
    cookies.delete(:remember_token)
  end
  
  def beesigned_in?
    !current_bee.nil?
  end
  
  def current_bee=(bee)
    @current_bee = bee
  end
  
  def current_bee
    @current_bee ||= Bee.find_by_remember_token(cookies[:remember_token])
  end
end
