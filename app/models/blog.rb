class Blog < Admin::Blog
  has_many :blog_comments
 
  scope :no_draft, where("draft != true")

end
