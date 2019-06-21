class AddPasswordToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :password, :string
  end
end
