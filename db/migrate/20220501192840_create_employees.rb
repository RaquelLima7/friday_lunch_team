class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :unit
      t.string :restaurant

      t.timestamps
    end
  end
end
