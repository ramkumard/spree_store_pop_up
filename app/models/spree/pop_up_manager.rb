
module Spree
  class  PopUpManager < ActiveRecord::Base

    attr_accessible :title, :show_daily, :end_date, :start_date, :body, :status, :contains

    validates :title, :start_date, :end_date , :presence =>  true

  end

end


