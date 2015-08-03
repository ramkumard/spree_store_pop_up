class AddLoggedInBoolean < ActiveRecord::Migration
	def change
  	add_column :spree_pop_up_managers, :is_logged, :boolean
  end
end
