class AddIsAdminToGikUsers < ActiveRecord::Migration
  def change
    add_column :gik_users, :is_admin, :integer
  end
end
