class AddLocationIdToSalesreps < ActiveRecord::Migration
  def change
    change_table :salesreps do |t|
      t.integer :location_id
    end

    add_index :salesreps, :location_id
  end
end
