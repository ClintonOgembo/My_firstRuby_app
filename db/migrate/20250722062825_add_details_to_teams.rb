class AddDetailsToTeams < ActiveRecord::Migration[8.0]
  def change
    add_column :teams, :level, :string
    add_column :teams, :nick_name, :string
  end
end
