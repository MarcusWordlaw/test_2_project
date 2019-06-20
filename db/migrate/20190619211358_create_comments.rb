class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :reply
      t.references :service, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true

      t.timestamps
    end
  end
end
