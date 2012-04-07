class CreateAdminAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_admin_users do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
