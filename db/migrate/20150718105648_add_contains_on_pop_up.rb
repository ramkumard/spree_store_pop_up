class AddContainsOnPopUp < ActiveRecord::Migration
  def change
  	add_column :spree_pop_up_managers, :contains, :text
  end
end
