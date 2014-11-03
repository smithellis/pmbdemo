class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
