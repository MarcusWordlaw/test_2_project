class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :zip_code
      t.integer :pool_size
      t.string :pool_material
      t.boolean :pool_cover
      t.integer :client_id
    end
  end
end
