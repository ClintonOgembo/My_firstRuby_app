class AddTempratureToPatients < ActiveRecord::Migration[8.0]
  def change
    add_column :patients, :temprature, :decimal, precision: 2, scale: 2
  end
end
