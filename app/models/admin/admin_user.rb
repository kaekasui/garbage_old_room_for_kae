class Admin::AdminUser < ActiveRecord::Base
  set_table_name :admin_users

  belongs_to :user, foreign_key: "user_id"
end
