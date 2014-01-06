class Spree::UserSessionsController < Devise::SessionsController
  def destroy
    super
    cookies[:active_popup] =  session[:active_popup] = true
  end
end