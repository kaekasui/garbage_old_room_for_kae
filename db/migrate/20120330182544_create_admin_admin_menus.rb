class CreateAdminAdminMenus < ActiveRecord::Migration
  def change
    create_table :admin_admin_menus do |t|
      t.integer :admin_menu_id
      t.string :title
      t.string :path

      t.timestamps
    end
  end
end
