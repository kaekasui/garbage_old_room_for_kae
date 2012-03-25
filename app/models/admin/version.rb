class Admin::Version < ActiveRecord::Base
  set_table_name :versions

  def self.current_version
    "room-" + self.find_by_current(true).name
  end
end
