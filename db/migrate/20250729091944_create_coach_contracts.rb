class CreateCoachContracts < ActiveRecord::Migration[8.0]
  def change
    create_table :coach_contracts, id: :uuid do |t|
      t.references :coache, null: false
      t.references :team, null: false
      t.integer :start_year, null: false
      t.integer :end_year
      t.bigint :contract_value, null: false, default: 0

      t.timestamps
    end
  end
end
