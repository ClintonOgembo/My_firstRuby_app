class AddDetailsToTeams < ActiveRecord::Migration[8.0]
  def change
    add_column :teams, :level, :string
    add_column :teams, :nickname, :string
    add_column :teams, :no_of_players, :integer
  end
end
