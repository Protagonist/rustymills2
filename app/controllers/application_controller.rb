class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_googleuser2

  def current_googleuser2
    @current_googleuser2 ||= Googleuser2.find(session[:googleuser2_id]) if session[:googleuser2_id]
  end


end
