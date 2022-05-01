class CreateBlindDates < ActiveRecord::Migration[6.1]
  def change
    create_table :blind_dates do |t|
      t.date :event
      t.string :teams, array: true, default: []
      t.string :employees, array: true, default: []
      t.string :restaurants, array: true, default: []
      t.string :leaders, array: true, default: []

      t.timestamps
    end
  end
end
