class Admin::UpdatedInformation < ActiveRecord::Base
  set_table_name :updated_informations

  default_scope where("deleted_at is null").order("created_at desc")

end
