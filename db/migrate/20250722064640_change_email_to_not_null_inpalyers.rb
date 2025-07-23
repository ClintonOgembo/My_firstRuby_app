class ChangeEmailToNotNullInpalyers < ActiveRecord::Migration[8.0]
  def change
    change_column_null :players, :email, false
  end
end
