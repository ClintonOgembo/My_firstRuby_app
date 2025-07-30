class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches, id: :uuid do |t|
      t.uuid :home_team_id, null: false
      t.uuid :away_team_id, null: false
      t.datetime :match_date, null: false
      t.uuid :referee_id, null: false

      t.timestamps
    end

    add_foreign_key :matches, :teams, column: :home_team_id
    add_foreign_key :matches, :teams, column: :away_team_id
    add_foreign_key :matches, :referees, column: :referee_id
  end
end
