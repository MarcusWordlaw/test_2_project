class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :property_id
      t.integer :employee_id
      t.datetime :appointment
      t.integer :service_cost
      t.integer :materials_cost
      t.integer :total
      t.boolean :paid
      t.text :job_description
    end
  end
end
