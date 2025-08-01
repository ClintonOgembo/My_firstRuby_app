class CreateMatchResults < ActiveRecord::Migration[8.0]
  def change
    create_table :match_results, id: :uuid do |t|
      t.references :matches, null: false
      t.references :teams, null: false
      t.integer :points

      t.timestamps
    end
    add_foreign_key :match_results, :matches
    add_foreign_key :match_results, :teams
  end
end
