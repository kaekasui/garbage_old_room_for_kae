class Admin::Menu < ActiveRecord::Base
  set_table_name :menus

  def self.menu_name(menu_id)
    self.find(menu_id).title
  end
end
