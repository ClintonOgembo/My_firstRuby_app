class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches, id: :uuid do |t|
      t.references :team, null: false
      t.references :team, null: false
      t.datetime :match_date, null: false
      t.references :referee, null: false

      t.timestamps
    end
  end
end
