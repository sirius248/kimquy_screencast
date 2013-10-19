class AddPasswordDigestToGikUsers < ActiveRecord::Migration
  def change
    add_column :gik_users, :password_digest, :string
  end
end
