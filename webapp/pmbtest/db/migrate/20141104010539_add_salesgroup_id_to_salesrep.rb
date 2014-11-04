class AddSalesgroupIdToSalesrep < ActiveRecord::Migration
  def change
    change_table :salesreps do |t|
      t.integer :salesgroup_id
    end

    add_index :salesreps, :salesgroup_id
  end
end