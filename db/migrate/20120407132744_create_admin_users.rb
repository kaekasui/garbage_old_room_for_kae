class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
