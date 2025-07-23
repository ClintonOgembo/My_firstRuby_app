class AddPrimaryKeyToUsers < ActiveRecord::Migration[8.0]
  def change
    # Create new table with email as primary key
    create_table :users_new, id: false, primary_key: :email do |t|
      t.string :email, null: false
      t.string :name
      t.integer :age
      t.string :password
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end

    # Copy data
    execute <<-SQL
      INSERT INTO users_new (email, name, age, password, created_at, updated_at)
      SELECT email, name, age, password, created_at, updated_at FROM users;
    SQL

    # 3. Drop old table
    drop_table :users

    # 4. Rename new table
    rename_table :users_new, :users
  end
end
