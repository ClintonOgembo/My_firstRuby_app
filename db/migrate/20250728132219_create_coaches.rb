class CreateCoaches < ActiveRecord::Migration[8.0]
  def change
    create_table :coaches, id: :uuid do |t|
      t.text :name, null: false
      t.text :nationality
      t.integer :rating, null: false, default: 0

      t.timestamps
    end
  end
end
