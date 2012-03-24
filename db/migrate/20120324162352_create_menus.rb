class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.text :introduction
      t.string :path
      t.boolean :admin
      t.boolean :disable
      t.integer :position

      t.timestamps
    end
  end
end
