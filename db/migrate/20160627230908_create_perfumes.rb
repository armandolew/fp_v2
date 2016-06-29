class CreatePerfumes < ActiveRecord::Migration[5.0]
  def change
    create_table :perfumes do |t|
      t.string :name
      t.string :trend
      t.integer :family_type_id
      t.integer :perfume_type_id

      t.timestamps
    end
  end
end
