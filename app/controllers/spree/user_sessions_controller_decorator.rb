module Spree
  UserSessionsController.class_eval do

    def destroy
    super
    cookies[:active_popup] =  session[:active_popup] = true
    end
 end
end