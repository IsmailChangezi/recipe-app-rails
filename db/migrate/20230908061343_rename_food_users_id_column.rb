class RenameFoodUsersIdColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :foods, :users_id, :user_id
  end
end
