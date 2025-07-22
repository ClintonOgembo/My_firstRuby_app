class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.timestamps
      t.string :name
      t.string :email, null: false
      t.integer :age
    end
  end
end
