class CreateTournaments < ActiveRecord::Migration[8.0]
  def change
    create_table :tournaments, id: false do |t|
      t.integer :year, null: false
      t.string :host_country, null: false
      t.timestamps
    end
  end
end
