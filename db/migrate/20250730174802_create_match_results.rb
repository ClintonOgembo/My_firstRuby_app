class CreateMatchResults < ActiveRecord::Migration[8.0]
  def change
    create_table :match_results, id: :uuid do |t|
      t.references :match, null: false
      t.references :team, null: false
      t.integer :points

      t.timestamps
    end
  end
end
