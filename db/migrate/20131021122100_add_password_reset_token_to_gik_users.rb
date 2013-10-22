class AddPasswordResetTokenToGikUsers < ActiveRecord::Migration
  def change
    add_column :gik_users, :password_reset_token, :string
  end
end
