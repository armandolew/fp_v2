class AddImageToPerfume < ActiveRecord::Migration[5.0]
  def change
    add_column :perfumes, :image, :string
  end
end
