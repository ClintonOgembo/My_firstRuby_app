class CreateTeam < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.text :background

      t.timestamps
    end
  end
end
