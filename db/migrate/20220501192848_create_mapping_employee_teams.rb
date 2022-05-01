class CreateMappingEmployeeTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :mapping_employee_teams do |t|
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
