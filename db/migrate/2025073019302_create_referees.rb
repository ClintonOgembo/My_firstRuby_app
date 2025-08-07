class CreateReferees < ActiveRecord::Migration[8.0]
  def change
    create_table :referees, id: :uuid do |t|
      t.text :name, null: false

      t.timestamps
    end
  end
end
