class AddIndexToGikUsersEmail < ActiveRecord::Migration
  def change
    add_index :gik_users, :email, unique: true
  end
end
