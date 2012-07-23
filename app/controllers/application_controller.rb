class ApplicationController < ActionController::Base
  protect_from_forgery
  include BeeSessionsHelper
  include QueenSessionsHelper
end
