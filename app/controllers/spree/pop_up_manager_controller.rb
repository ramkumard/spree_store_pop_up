module Spree
    class PopUpManagerController <  ApplicationController

      # display popup selected date range
      def show_popup
        @pop_up_manager = Spree::PopUpManager.find(params[:id])
        if request.xhr?

          if @pop_up_manager.show_daily == true

            cookies[:active_popup] =  session[:active_popup] = true

          else

            start_date = @pop_up_manager.start_date
            end_date = @pop_up_manager.end_date
            if  Time.zone.now > start_date and Time.zone.now < end_date

              cookies[:active_popup] =  session[:active_popup] = true
            end

          end

          render :json => :nothing

        else
          redirect_to '/'
        end
      end

    end
  end


