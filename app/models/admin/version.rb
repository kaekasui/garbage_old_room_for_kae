class Admin::Version < ActiveRecord::Base
  set_table_name :versions

  default_scope where("deleted_at is null").order("created_at desc")

  def self.current_version
    "room-" + self.find_by_current(true).name if self.find_by_current(true)
  end

end
