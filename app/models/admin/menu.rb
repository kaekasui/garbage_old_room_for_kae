class Admin::Menu < ActiveRecord::Base
  set_table_name :menus

  def self.menu_name(menu_id)
    self.find_by_id(menu_id).blank? ? false : self.find_by_id(menu_id).title
  end
end
