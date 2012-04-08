class Admin::AccessCount < ActiveRecord::Base
  set_table_name :access_counts

  # コンテンツごとのアクセスカウンター
  def self.set_access_counts(menu_id)
    count = self.find_by_menu_id_and_access_at(menu_id, Date.today)
    count = self.create(cnt: 0, menu_id: menu_id, access_at: Date.today) if count.blank?
    count.cnt = count.cnt + 1 
    count.save
  end

  def menu_name
    Menu.menu_name(self.menu_id)
  end
end
