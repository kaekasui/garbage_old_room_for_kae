class Admin::Blog < ActiveRecord::Base
  set_table_name :blogs

  default_scope where("deleted_at is null").order("created_at desc")

end
