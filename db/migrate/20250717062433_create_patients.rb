class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.string :diagnosis

      t.timestamps
    end
  end
end
