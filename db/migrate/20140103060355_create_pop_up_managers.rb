class CreatePopUpManagers < ActiveRecord::Migration

  def change
    create_table :spree_pop_up_managers do |t|

      t.string    :title
      t.text      :body
      t.boolean   :show_daily
      t.string    :start_date
      t.string    :end_date
      t.boolean   :status
      t.timestamps
    end
  end

end
