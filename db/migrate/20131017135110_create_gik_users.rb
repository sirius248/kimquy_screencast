class CreateGikUsers < ActiveRecord::Migration
  def change
    create_table :gik_users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
