class CreateAdminSideMenus < ActiveRecord::Migration
  def change
    create_table :admin_side_menus do |t|
      t.integer :menu_id
      t.string :title
      t.integer :position
      t.boolean :disable

      t.timestamps
    end
  end
end
