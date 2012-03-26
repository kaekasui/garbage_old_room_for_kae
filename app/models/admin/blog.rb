class Admin::Blog < ActiveRecord::Base
  set_table_name :blogs

  default_scope where("deleted_at is null").order("created_at desc")

  # コメント数を返す
  def comment_counts
    BlogComment.find_all_by_blog_id(self.id).count
  end

end
