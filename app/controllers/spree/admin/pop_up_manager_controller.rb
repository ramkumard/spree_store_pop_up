module Spree
  module Admin
    class PopUpManagerController < ResourceController
      before_filter :active_popup

      def index
        @pop_up_managers = Spree::PopUpManager.all
      end

      def new
        @pop_up_manager = Spree::PopUpManager.new
      end

      def create
        @pop_up_manager = Spree::PopUpManager.new(params[:pop_up_manager])
        if @pop_up_manager.save
          flash[:notice] = "Popup was created successfully"
          redirect_to admin_pop_up_manager_path
        else
          render :action => 'new'
        end
      end

      def edit
        @pop_up_manager = Spree::PopUpManager.find(params[:id])
      end

      def update
        @pop_up_manager = Spree::PopUpManager.find(params[:id])
        if @pop_up_manager.update_attributes(params[:pop_up_manager])
          flash[:notice] = "Popup was updated successfully"
          redirect_to admin_pop_up_manager_path
        else
          render :action => 'edit'
        end
      end


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

      def destroy
        params
      end

      private
      def active_popup
        @pop_up_manager = Spree::PopUpManager.where(:status => true).first rescue nil
      end

    end
  end
end

