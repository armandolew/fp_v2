class CreateBottles < ActiveRecord::Migration[5.0]
  def change
    create_table :bottles do |t|
      t.string :name
      t.integer :bottle_type_id

      t.timestamps
    end
  end
end
