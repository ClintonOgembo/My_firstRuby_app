class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches, id: :uuid do |t|
      t.references :teams, null: false
      t.references :teams, null: false
      t.datetime :match_date, null: false
      t.references :referees, null: false

      t.timestamps
    end

    add_foreign_key :matches, :teams, column: :home_team_id
    add_foreign_key :matches, :teams, column: :away_team_id
    add_foreign_key :matches, :referees
  end
end
