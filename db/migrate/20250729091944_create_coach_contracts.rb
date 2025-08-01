class CreateCoachContracts < ActiveRecord::Migration[8.0]
  def change
    create_table :coach_contracts, id: :uuid do |t|
      t.references :coaches, null: false
      t.references :teams, null: false
      t.integer :start_year, null: false
      t.integer :end_year
      t.bigint :contract_value, null: false, default: 0

      t.timestamps
    end

    add_foreign_key :coach_contracts, :coaches
    add_foreign_key :coach_contracts, :teams
  end
end
