class CreateSalesgroups < ActiveRecord::Migration
  def change
    create_table :salesgroups do |t|
      t.text :description

      t.timestamps
    end
  end
end
