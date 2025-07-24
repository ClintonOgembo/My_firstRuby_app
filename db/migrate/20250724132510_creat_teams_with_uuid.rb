class CreatTeamsWithUuid < ActiveRecord::Migration[8.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')


    create_table :teams, id: :uuid do |t|
    t.string :name
    t.string :location
    t.text :background

    t.timestamps
    end
  end
end
