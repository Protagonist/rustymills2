class SessionsController < ApplicationController
  def create
    googleuser2 = Googleuser2.from_omniauth(env["omniauth.auth"])
    session[:googleuser2_id] = googleuser2.id
    redirect_to root_path

  end

  def destroy
    session[:googleuser2_id] = nil
    redirect_to root_path
  end
end
