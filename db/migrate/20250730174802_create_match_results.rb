class CreateMatchResults < ActiveRecord::Migration[8.0]
  def change
    create_table :match_results, id: :uuid do |t|
      t.uuid :match_id, null: false
      t.uuid :team_id, null: false
      t.integer :points

      t.timestamps
    end
    add_foreign_key :match_results, :matches, column: :match_id
    add_foreign_key :match_results, :teams, column: :team_id
  end
end
